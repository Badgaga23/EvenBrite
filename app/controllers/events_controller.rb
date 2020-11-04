class EventsController < ApplicationController
<<<<<<< HEAD
    before_action :authenticate_user!, only: [:create, :new]
  
    def index
      @events = Event.all
    end
  
    def show 
      @event = Event.find(params[:id])
    end
  
    def new
      @event = Event.new
    end
  
    def create
      @event = Event.create(event_params)
      @event.admin = current_user  
      if @event.save
        redirect_to event_path(@event.id), success: "Votre événement à était créé avec succès"
      else
        redirect_to new_event_path, danger: 'Informations incorrecte'
      end
    end
  
    private
  
    def event_params
      params.require(:event).permit(:title, :start_date, :duration, :description, :price, :location) 
    end
  
  
  end
=======
  before_action :authenticate_user!, only: [:new, :show]

  def index
      @events = Event.all.to_a.each_slice(3).to_a
  end

  def show
      @event = Event.find(params[:id])
  end

  def new
      @new_event = Event.new
  end

  def create
      @new_user = current_user
      @new_event = Event.new(title: params[:title], description: params[:description], location: params[:location], duration: params[:duration].to_i, price: params[:price], start_date: params[:start_date], user: @new_user) 
  
      if @new_event.save
          redirect_to '/events'
        else
          render new_event_path
        end
  end

  def update
  end

  def destroy
  end
end
>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
