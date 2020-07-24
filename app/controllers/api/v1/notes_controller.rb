class Api::V1::NotesController < ApplicationController

before_action :set_tracker

  def index
    @notes = @tracker.notes
    render json: @notes
  end

  def create
    @note = @tracker.notes.create(note_params)
      if @note.save
      render json: @tracker
    else
      render json: {error: "Error Saving"}
    end
  end

  def show
    # @note = Note.find(params[:id])
    @note = @tracker.notes.find_by(id: params[:id])
    render json: @note
  end

  def destroy
    # @note = Note.find(params[:id])
    @note = Note.find(params["id"])
    @note.destroy
    @tracker = Tracker.find(note.tracker_id)
    render json: tracker
  end


  private

  def set_tracker
    @tracker = Tracker.find(params[:tracker_id])
  end

  def note_params
    params.require(:note).permit(:tracker_id, :content, :date)
  end

end
