class IdeasController < ApplicationController


  def index
    @ideas = Idea.all

    respond_to do |format|
      format.html
      format.json { render json: @ideas}
    end
  end

  def new
    @i = Idea.new
    respond_to do |format|
      format.html
    end
  end

  def create
    i = Idea.create(idea_params)

    respond_to do |format|
      format.html {redirect_to ideas_url}
    end
  end

  def show
    @i = Idea.find_by_id(params["id"])

    respond_to do |format|
      format.html
      format.json { render json:@i}
    end
  end

  def edit
    @i = Idea.find_by_id(params["id"])
    respond_to do |format|
      format.html
    end
  end
  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end
end
