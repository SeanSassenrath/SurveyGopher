class User < ActiveRecord::Base

  has_many :my_surveys, class_name: 'Survey', foreign_key: 'creator_id'
  has_many :answers
end
