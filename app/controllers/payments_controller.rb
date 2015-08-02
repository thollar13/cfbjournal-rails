class PaymentsController < ApplicationController

  def index
    already_paid = User.where(:id => current_user).first
    if already_paid.allow_access != false
      redirect_to edit_pick_path(current_user)
      flash[:notice] = "You have already purchased your picks."
    else
      @payment = Payment.new
    end
  end

  def create
    @amount = 2000

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card => token
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => "CFB Journal",
      :currency => 'usd'
    )

    @user = current_user
    @user.allow_access = true
    @user.save

    made_pick = Pick.where(:user_id => current_user).first
    if made_pick != nil
      redirect_to edit_pick_path(current_user)
    else
      redirect_to new_pick_path
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to payments_path
  end

  private
    def payment_params
      params.require(:payment).permit(:user_id, :email)
    end
end