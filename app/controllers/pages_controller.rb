class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def anotherthing
    @something = params[:something]
  end

end
