class StaticController < ApplicationController
  def home
    # render :home
  end
  def hello
    @hello = params[:name]
    respond_to do |format|
      format.html do
            # load template as normal
        end
      format.json do
            # render as json instead
           render :json => { message: "hello, #{@name}!" }
      end
    end
  end
  def contact

  end
end