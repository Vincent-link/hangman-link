class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
        respond_to do |format|
            format.html { @page_title = @event.name } # show.html.erb
            format.xml # show.xml.builder
            format.json { render json: { id: @event.id, name: @event.name }.to_json }
        end
  end

    def index
        @event = Event.all
    end
end
