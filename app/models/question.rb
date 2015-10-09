class Question < ActiveRecord::Base
  has_many :choices , :dependent => :destroy
  has_many :correct_answers , :dependent => :destroy
  accepts_nested_attributes_for :choices ,  :allow_destroy => true , reject_if: :all_blank
  validates_presence_of :choices
end
