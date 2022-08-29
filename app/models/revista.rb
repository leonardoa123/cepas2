class Revista < ApplicationRecord
    has_many :trabajos
    has_many :enologos, through: :trabajos
end
