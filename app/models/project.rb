class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pictures
  has_many :researches
  has_and_belongs_to_many :patterns
  has_many :supplies
  has_many :project_parts
  has_and_belongs_to_many :materials
  has_many :notes
end
