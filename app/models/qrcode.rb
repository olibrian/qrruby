class Qrcode < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
