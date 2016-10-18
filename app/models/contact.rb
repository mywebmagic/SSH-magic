class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
end
   
   Contact.create(name: "John").valid? # => true
   Contact.create(name: nil).valid? # => false
   Contact.create(email: "jndoe@example.com").valid? # => true
   Contact.create(email: nil).valid? # => false
   
   
   
   
  
   
  
   
    



    
    
   
    