class JudgementsController < ApplicationController

def index
    @judgements = Judgement.all
  end


  def new
    @contestant = Contestant.find(params[:contestant_id])
    @judgement = @contestant.judgements.build
  end

  def create
    @contestant = Contestant.find(params[:contestant_id])
    @contestant.judgements.build(judgement_params)
    if @contestant.save
      redirect_to contestants_path
    else
      render :new
    end
  end

  private

  def judgement_params
    params.require(:judgement).permit(:cat1,:cat2,:cat3,:cat4,:cat5)
  end

end
