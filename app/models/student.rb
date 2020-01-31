class Student < ApplicationRecord
    enum :gender => {non_binary: 0, female: 1, male: 2, other: 3}
    validates :name, presence: true, length: {minimum: 5}
    validates :age, numericality: { only_integer: true, greater_than: 17 }
    validates :bio, length: {maximum: 500}
end
