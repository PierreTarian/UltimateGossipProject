class PagesController < ApplicationController

  def home
    puts params.inspect
    @gossips = Gossip.all
  end

  def team
  end
  
  def contact 
  end

  def welcome
    @first_name = params[:first_name]
    puts params[:first_name].inspect
  end

  def potin 
    @gossips = Gossip.all
    @id = params[:id]
  end

  def author
    @gossips = Gossip.all
    @title = params[:title]
  end

end
