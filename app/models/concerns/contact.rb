class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true

    after_create :send_email
    
    private def send_email
        ContactMailer.contact_email(self).deliver
    end
end



    