class Review < ActiveRecord::Base
  belongs_to :shirt
  belongs_to :users
end
