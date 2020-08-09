class Todo < ApplicationRecord
  extend Enumerize

  enumerize :color, :in => %w(red orange yellow	green	cyan blue purple pink)

  validates_length_of :name, minimum: 5
  validates_uniqueness_of :name

end
