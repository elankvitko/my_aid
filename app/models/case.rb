class Case < ApplicationRecord
  has_many :law_categories, as: :lawable
  has_one  :case_attribute
  belongs_to :user

  def stats
    self.case_attribute
  end
end
