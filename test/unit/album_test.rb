# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  release_year :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cover_file   :string(255)
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
