class Test < ActiveRecord::Base
  has_many :questions , :dependent => :destroy
  belongs_to :question_type
  accepts_nested_attributes_for :questions ,  :allow_destroy => true , reject_if: :all_blank
  validates_presence_of :name , :question_type , :questions
end
