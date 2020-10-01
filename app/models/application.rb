class Application < ApplicationRecord
  attachment :cv
  validates :fname, :lname, :gender, :email, :contact, :address, :education, presence: true

end
