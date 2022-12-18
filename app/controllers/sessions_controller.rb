# frozen_string_literal: true

# class for creating and managing sessions
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user.nil?

      redirect_to '/sessions/new?message=Incorrect+login+or+password'
    else
      sign_in user
      redirect_to :calc_input
    end
  end

  def exit
    sign_out
    redirect_to :root
  end

  def sign_in(user)
    session[:current_user_id] = user.id
    self.current_user = user
  end

  def sign_out
    session[:current_user_id] = nil
    self.current_user = nil
  end

  attr_writer :current_user
end
