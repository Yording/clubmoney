class Contribute < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :fine
end
