class Choice < ActiveRecord::Base
  belongs_to :question
  attr_accessor :select
  validates_presence_of :content
  validates_uniqueness_of :content , scope: :question


end
