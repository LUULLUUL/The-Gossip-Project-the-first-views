class StaticController < ApplicationController
  def home
    @first_name = params[:first_name]
    @gossips = Gossip.all
  end

  def team
  end

  def contact
  end

  def gossip
    @gossips = Gossip.all
    @id = params[:id]
  end

  def user 
    @users = User.all 
    @id = params[:id]
  end  

end
