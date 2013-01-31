class ApplicationController < ActionController::Base
  protect_from_forgery

  # Lock all actions in the widgets controller
  lock
end
