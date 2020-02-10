class Student < ApplicationRecord

# def sendEmail
#   Sendemail.send(self)
#
#   puts "Hi"
#
# end

validates :firstname, :lastname,  presence: true

end
