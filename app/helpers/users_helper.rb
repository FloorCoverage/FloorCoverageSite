require 'digest'
module UsersHelper
    def generate_token
      publicKey = current_user.id.to_s
      secretKey = ENV['SECRET_KEY']
       
      token = Digest::MD5.hexdigest(publicKey + secretKey) 
    end
    def match_token(token)
      # # TODO: remove new line when pasting from site
      # token = "14ef6c04a0ff59faf19664660ca1be30" 
      secretKey = ENV['SECRET_KEY']
      User.all.each do |user|
        possible_hash = Digest::MD5.hexdigest(user.id.to_s + secretKey)
        if (possible_hash == token)
          return user.id
        end
      end
      # TODO: throw pop up not found
      nil
    end
  
end
 