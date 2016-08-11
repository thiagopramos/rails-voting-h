class ContestantsController < ApplicationController

def index
    @contestants = Contestant.all
  end

  def show
    @contestant = Contestant.find(params[:id])
  end

  def new
    @contestant = Contestant.new
  end

  def create
    @contestant = Contestant.new(contestant_params)
    if @contestant.save
      redirect_to contestants_path
    else
      render :new
    end
  end

  def edit
    @contestant = Contestant.find(params[:id])
  end

  def update
    contestant = Contestant.find(params[:id])
    if contestant.update(contestant_params)
      redirect_to contestants_path
    else
      render :edit
    end
  end

  def mark_as_done
    contestant = Contestant.find(params[:id])
    contestant.done = !contestant.done;
    contestant.save
    redirect_to contestants_path
  end

  def destroy
    contestant = Contestant.find(params[:id])
    contestant.destroy
    redirect_to contestants_path
  end


  private

  def contestant_params
    params.require(:contestant).permit(:name)
  end

end
