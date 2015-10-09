class Choice < ActiveRecord::Base
  belongs_to :question
  attr_accessor :select
end
