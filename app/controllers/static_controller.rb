class StaticController < ApplicationController
  before_action :require_token, only: [:feed]
  def index

    @users = User.all
    @groups = Group.all
    #@groups = Group.connection(@user)

  end

  def feed
    end

end
