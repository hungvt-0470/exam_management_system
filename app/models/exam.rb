class Exam < ApplicationRecord
  belongs_to :subject

  has_many :exam_questions, dependent: :destroy
  has_many :questions, through: :exam_questions
  has_many :exam_results, dependent: :destroy
end
