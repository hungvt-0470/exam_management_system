class Question < ApplicationRecord
  belongs_to :subject

  has_many :answers, dependent: :destroy
  has_many :exam_questions, dependent: :destroy
end
