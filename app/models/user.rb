class User < ApplicationRecord
  has_many :created_subjects, class_name: "Subject", dependent: :destroy

  has_many :enrolled_subjects, dependent: :destroy
  has_many :subjects, through: :enrolled_subjects

  has_many :exam_results, dependent: :destroy
end
