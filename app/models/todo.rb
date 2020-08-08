class Todo < ApplicationRecord
  extend Enumerize

  enumerize :color, :in => %w(red orange yellow	green	cyan blue purple pink)
end
