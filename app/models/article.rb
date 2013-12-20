# -*- encoding : utf-8 -*-
class Article < ActiveRecord::Base
  include ApplicationHelper

  dragonfly_accessor :image

  validates :title, :presence => true
  validates :date, :presence => true

  paginates_per 2

  default_scope order('date DESC')
  scope :last_news, ->{ limit(2) }

  def to_param
    '/articles/' + id.to_s + '/' + transliterate(title)
  end

end

# == Schema Information
#
# Table name: articles
#
#  id              :integer         not null, primary key
#  title           :text
#  date            :date
#  short_text      :text
#  text            :text
#  title_of_window :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  image_uid       :string(255)
#

