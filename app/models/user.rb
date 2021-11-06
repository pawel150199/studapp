class User < ApplicationRecord
    has_many :statistics
    validates :username, presence: true, uniqueness: true , length: { in: 3..20 }
    validates :last_score, presence: true, length: {in: 0..100}
end
