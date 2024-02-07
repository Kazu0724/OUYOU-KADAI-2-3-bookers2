class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]

    if @model == "User"
      @records = User.search(params[:content], params[:method])
    else
      @records = Books.search(params[:content], params[:method])
    end
  end

end
