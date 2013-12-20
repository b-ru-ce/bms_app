# == Schema Information
#
# Table name: pages
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  text         :text
#  purpose      :string(255)
#  show_in_menu :boolean
#  menu         :string(255)
#  meta         :text
#  created_at   :datetime
#  updated_at   :datetime
#  ancestry     :string(255)
#

class Page < ActiveRecord::Base
  has_ancestry
  #attr_accessible :title, :parent_id
  validates :title, presence: true

  #default_scope {order('sort')}
  #scope :main, -> {where(show_in_header: true)}
  #scope :base, -> { where(:parent_id => nil) }
  #scope :children, -> { where("parent_id NOT NULL") }
  scope :purpose, lambda { |purpose| where(purpose: purpose).limit(1) }



  def link_with_alias
    '/pages/' + id.to_s + '/' + transliterate(title)
  end

  def parent_enum
    #Page.where.not(id: id).order(:names_depth_cache).map { |c| ["-" * (c.depth) + ' ' + c.title, c.id ] }
    Page.where.not(id: id).each { |c| c.ancestry = c.ancestry.to_s + (c.ancestry != nil ? "/" : '') + c.id.to_s
    }.sort {|x,y| x.ancestry <=> y.ancestry
    }.map{ |c| ["-" * (c.depth - 1) + ' ' + c.title,c.id]
    }

  end



end
