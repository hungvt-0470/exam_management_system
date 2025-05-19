class Answer < ApplicationRecord
  belongs_to :question

  has_many :exam_results_answers, dependent: :destroy
end
