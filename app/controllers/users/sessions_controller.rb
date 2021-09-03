# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]  
  
  # GET /resource/sign_in
  def new
    super do |resource|

      @shifts = Shift.where(user_id: params[:search])
      # TODO
      # move the following section to helper_method
      # check if User.find is not null and create appropriate response
      # crate token algorithm
      # @current_user_for_token ||= User.find(params[:search]) 
      # token = {
      #   name:      @current_user_for_token.name,
      #   email:     @current_user_for_token.email,
      #   secretKey: @current_user_for_token.encrypted_password
      # }  
      # puts '==========================' + token.to_s  

      gon.static_events = @shifts.joins(:employee, :role).each_with_object([]) do |shift, event|
        _title = shift.title.empty? ? "" : "#{shift.title}:  "
        _title += "#{shift.employee.first_name} #{shift.employee.last_name}, #{shift.role.name}"
        event << {
            title:  "#{_title}",
            start:  datetime(shift.date, shift.start),
            end:    datetime(shift.date, shift.end),
            id:     shift.id,
            user_id:shift.user_id,
        }

      end
    end
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end


  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
