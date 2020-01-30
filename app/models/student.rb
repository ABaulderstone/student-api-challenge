class Student < ApplicationRecord
    enum :gender => {non_binary: 0, female: 1, male: 2, other: 3}
    validates :name, presence: true, length: {minimum: 5}
end
