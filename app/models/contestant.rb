class Contestant < ApplicationRecord
    has_many :judgements, dependent: :destroy
end
