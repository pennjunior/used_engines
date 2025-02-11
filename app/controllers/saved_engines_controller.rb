class SavedEnginesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_engine, only: %i[create delete]

  def create
    @saved_engine = SavedEngine.find_or_create_by(engine: @engine, user: current_user)

    respond_to do |format|
      format.js
      format.html { redirect_to @engine, notice: "Successfully saved engine" }
    end
  end

  def delete
    @saved_engine = SavedEngine.find_by( engine: @engine, user: current_user)
    @saved_engine&.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to @engine, alert: "Successfully unlisted engine" }
    end
  end

  private
  def set_engine
    @engine = Engine.friendly.find(params[:engine_id])
  end

end
