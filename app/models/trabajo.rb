class Trabajo < ApplicationRecord
  belongs_to :enologo
  belongs_to :revista
  belongs_to :cargo
end
