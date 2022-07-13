class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @vinos = Vino.all
    end
end