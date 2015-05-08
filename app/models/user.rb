class User < ActiveRecord::Base

  has_many :my_surveys, class_name: 'Survey', foreign_key: 'creator_id'
  has_many :answers
  has_many :taken_surveys, class_name: 'Survey', through: :answers, source: :survey
end
