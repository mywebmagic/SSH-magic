class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true

    after_create :send_email
    
    private def send_email
        ContactMailer.contact_email(self).deliver
    end
end

contact.create(name: "John").valid?# => true
contact.create(name: nil).valid?# => false
contact = contact.save(email: "john@example.com").valid?# => true
contact = contact.save(email: nil).valid?# => false

    