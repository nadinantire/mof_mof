class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @exhibition=Exhibition.find(params[:exhibition_id])
    @ticket = @exhibition.tickets.build
  
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)

      if @ticket.save
        ContactMailer.contact_mail(@ticket).deliver
       redirect_to @ticket, notice: 'Ticket was successfully created.' 
        
      else
         render :new 
       
      end
  end

  def update
   
      if @ticket.update(ticket_params)
       redirect_to @ticket, notice: 'Ticket was successfully updated.' 
      else
       render :edit 
    end
  end

  def destroy
    @ticket.destroy
   
      redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' 
    
  end

  private
   
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end
    def ticket_params
      params.require(:ticket).permit(:phone, :exhibition_id, :user_id)
    end
end
