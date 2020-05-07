class GossipController < ApplicationController
  
  def index
  	@gossips = Gossip.all
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
  	@gossip = Gossip.find(params[:id])

  end

 # Display a view to create a gossip
  def new_gossip
    @gossip = Gossip.new(title: "", content: "", user: User.last)
  end

# Create a new gossip
  def create
    @gossip = Gossip.new(title: params[:title],
                         content: params[:content],
                         user: User.find(params[:user]))

    if @gossip.save
      flash[:success] = "Le potin a été créé avec succès."
      redirect_to gossips_path
    else
      render 'new'
    end
  end

# Edit an existing gossip
  def update
	@gossip = Gossip.find_by(title: params[:title])

    if @gossip.update(title: params[:title], content: params[:content], user: User.find(params[:user]))
      flash[:success] = "Le potin a été mis à jour avec succès."
      redirect_to gossips_path
    else
      render 'edit'
    end
  end

end
