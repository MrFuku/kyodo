class HomeController < ApplicationController
  before_action :forbid_login_user, only: %i[top]

  def top
  end

  def about
  end
end
