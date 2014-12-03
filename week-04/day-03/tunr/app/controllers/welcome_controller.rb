class WelcomeController < ApplicationController
  def index
    @mixtapes = Mixtape.order(:updated_at).limit(10)
  end
end
