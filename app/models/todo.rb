# frozen_string_literal: true

class Todo < ActiveRecord::Base
  validates_presence_of :title
  validates :title, length: { minimum: 1 }

  belongs_to :user
end
