class AttendancesController < ApplicationController
  def index
  end

  def show
  end

  def new
    
  end

  def create
    @event = Event.find(params[:event_id])
    @amount = @event.price
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
  @attendance = Attendance.create(event: @event, user: current_user, stripe_customer_id: customer.id)
  if @attendance.save 
    redirect_to event_path(@event)
  end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
