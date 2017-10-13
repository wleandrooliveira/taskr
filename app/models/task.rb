class Task < ApplicationRecord
    validates :content, presence: true, length: {minimum: 5, maximum:300}

    belongs_to :tasks
end
  