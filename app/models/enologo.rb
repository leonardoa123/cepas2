class Enologo < ApplicationRecord
    has_many :trabajos
    has_many :revistas, through: :trabajos
    has_many :cargos, through: :trabajos

    accepts_nested_attributes_for :trabajos
end
