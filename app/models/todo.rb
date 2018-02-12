class Todo < ApplicationRecord
	belongs_to :project, optional: true
	validates :text, presence: true
end
