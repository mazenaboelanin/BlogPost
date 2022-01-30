class PagesController < ApplicationController

    def about 
        @title = 'Abouts Us'
        @content = 'This is the about page'
    end
    
end
