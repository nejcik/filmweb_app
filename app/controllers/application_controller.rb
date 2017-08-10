class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "That is a firs page"
  end
end
