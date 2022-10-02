class EntriesController < ApplicationController

    before_action :find_entry, only: [:show, :edit, :ubdate, :destroy]

    def index
        @entries = Entry.all.order(:id)

    end

    def show 
    
    end

    def new
        @entry = Entry.new
    end

    def create
        entry = Entry.create(entry_params(params))
        redirect_to(entry_path(entry))
    end

    def edit
    end

    def update
        @entry.update(entry_params(params))
        redirect_to(entry_path(@entry))
    end

    def destroy
        @entry.destroy
        redirect_to(entries_path)
    end

    private

    def find_entry
        @entry = Entry.find(params[:id])
    end

    def entry_params(params)
        params["entry"].permit(:title, :contents, :date)
    end
end
