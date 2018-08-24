class EmailsController < ApplicationController
  before_action :set_emails, only: [:index, :destroy]
	respond_to? :html, :js

  def show
   @email = Email.find(params[:id])
   @email.read = true
   @email.save
  end

  def destroy
    @email = Email.find(params[:id])
    @email = Email.destroy(params[:id])
    redirect_to root_path
  end

private
  def set_emails
    @email = Email.all
  end

end
