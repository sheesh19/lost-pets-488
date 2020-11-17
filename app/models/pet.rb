class Pet < ApplicationRecord
  SPECIES = %w(koala kangaroo shark bogan wombat platypus)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
