require_dependency "notable/application_controller"

module Notable
  class NotesController < ApplicationController
    before_action :set_note, :only => [:show, :edit, :update, :destroy]
    def index
      @notes = Note.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @notes }
      end
    end

    def show
      @note = Note.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @note }
      end
    end

    def new
      @note = Note.new(:notable_id => params[:note][:notable_id], :notable_type => params[:note][:notable_type])

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @note }
        format.js
      end
    end

    def edit
      @note = Note.find(params[:id])
    end

    def create
      @note = Note.new(:notable_id => params[:note][:notable_id], :notable_type => params[:note][:notable_type], :body => params[:note][:body])

      respond_to do |format|
        if @note.save
          format.html { redirect_to @note, notice: 'Note was successfully created.' }
          format.json { render json: @note, status: :created, location: @note }
          format.js
        else
          format.html { render action: "new" }
          format.json { render json: @note.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @note = Note.find(params[:id])

      respond_to do |format|
        if @note.update_attributes(params[:note])
          format.html { redirect_to @note, notice: 'Note was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @note.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @note = Note.find(params[:id])
      @note.destroy

      respond_to do |format|
        format.html { redirect_to notes_url }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_note
        @note = Note.find(params[:id])
      end
  end
end
