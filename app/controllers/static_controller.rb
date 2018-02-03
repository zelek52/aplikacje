class StaticController < ApplicationController
  def index

    @users = User.all
    @groups = Group.all
    #@groups = Group.connection(@user)

  end
end
