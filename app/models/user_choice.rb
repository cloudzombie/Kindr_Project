# == Schema Information
#
# Table name: user_choices
#
#  id               :integer          not null, primary key
#  strain_rating_id :integer
#  choice_id        :integer
#  rating           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class UserChoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :choice
  belongs_to :dispensary_strain

  def self.average_ratings
    group(:choice).average(:rating)
  end
end
