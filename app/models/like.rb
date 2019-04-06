class Like < ApplicationRecord
  validate user_id, presence: true
  validate post_id, presence: true
end
