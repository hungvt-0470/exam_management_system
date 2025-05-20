class Subject < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :questions, dependent: :destroy
  has_many :exams, dependent: :destroy

  has_many :enrolled_subjects, dependent: :destroy
  has_many :users, through: :enrolled_subjects
end
