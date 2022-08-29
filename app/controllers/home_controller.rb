class HomeController < ApplicationController

    def index
        
    end

    def catalogue
        @vinos = Vino.all
    end

end