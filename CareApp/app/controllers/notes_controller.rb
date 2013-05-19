class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find_by_id(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new
    @note.note_id = params[:note_id]
    @note.case_id = params[:case_id]
    @note.note = params[:note]
    
    if @note.save
      redirect_to notes_url
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find_by_id(params[:id])
  end

  def update
    @note = Note.find_by_id(params[:id])
    @note.note_id = params[:note_id]
    @note.case_id = params[:case_id]
    @note.note = params[:note]
    
    if @note.save
      redirect_to notes_url
    else
      render 'new'
    end
  end

  def destroy
    @note = Note.find_by_id(params[:id])
    @note.destroy
    redirect_to notes_url
  end
end
