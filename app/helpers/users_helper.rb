require 'digest'
module UsersHelper
    def generate_token
      secretKey = {
        name:      current_user.name,
        email:     current_user.email,
        privateKey: current_user.id
      } 
      token = Digest::MD5.hexdigest(secretKey[:name].to_s + secretKey[:email].to_s + secretKey[:privateKey].to_s)  
    #   https://www.sitepoint.com/exploring-cryptography-fundamentals-in-ruby/
    end
end
 