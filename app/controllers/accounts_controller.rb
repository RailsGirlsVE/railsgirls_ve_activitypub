class AccountsController < ApplicationController
  def show
    @account = Account.find_local! params[:username]

    respond_to do |format|
      format.html
      format.json do
        render json: @account, serializer: ActorSerializer
      end
    end
  end
end
