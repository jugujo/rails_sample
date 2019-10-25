# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  msg        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#

class Comment < ApplicationRecord
    belongs_to :board
    belongs_to :user
end
