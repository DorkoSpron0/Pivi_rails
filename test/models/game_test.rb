# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :string
#  img            :string
#  age            :integer
#  linkOfficial   :string
#  linkNoOfficial :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
