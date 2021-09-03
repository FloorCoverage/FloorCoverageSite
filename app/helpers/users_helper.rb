module UsersHelper
    def generate_token
        token = {
        name:      current_user.name,
        email:     current_user.email,
        secretKey: current_user.encrypted_password
      } 
      token.to_s
    #   https://www.sitepoint.com/exploring-cryptography-fundamentals-in-ruby/
    end
end
 