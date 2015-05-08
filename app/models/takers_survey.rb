class TakersSurvey < ActiveRecord::Base
  has_many :takers, { :class_name => "User", :foreign_key => :taker_id}


  has_many :takers, :through => :takers_surveys
  has_many :surveys, :through => :takers_surveys

end
