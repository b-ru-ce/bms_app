# -*- encoding : utf-8 -*-
class Product < ActiveRecord::Base
  include PathWithAlias
  dragonfly_accessor :image

  has_ancestry

  paginates_per 10

  belongs_to :category

  validates :title, presence: true

  default_scope {order('sort')}

  def my_path
    {id: self.id, alias: self.alias, category_alias: category.alias}
  end
end

# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  category_id     :integer
#  title           :string(255)
#  image_uid       :string(255)
#  price           :integer
#  text            :text
#  sort            :integer
#  ancestry        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  title_of_window :string(255)
#  meta            :text
#
# Indexes
#
#  index_products_on_ancestry  (ancestry)
#
