class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_k, :nickname, :age, :birthday, :grade, :university, :undergraduate, :study_subject])
  end

end
