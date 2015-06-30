class ArtController < ApplicationController
   def index
    @arts = Art.all
  end
end
