class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  #before_action :authenticate_user!
=======
  before_action :authenticate_user!
>>>>>>> c07f1fd42131a2d73386427f3cccd9d19f437fb6
end
