class GossipController < ApplicationController
  def edit
  end

  def index
  	@gossips = Gossip.all
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
  	@gossip = Gossip.find(params[:id])

  end


  def new_gossip
  end

  def update
	@gossip = Gossip.find(params[:id])
   	gossip_params = params.require(:post).permit(:name, :content)
   	@gossip.update(gossip_params)
   	redirect_to gossip_path
  end

end
