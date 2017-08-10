
class BlogController < ApplicationController
    def index
        @test = params[:test]
    end
    def show
        @id = params[:id]
        @test = params[:test]
    end
    def create
        redirect_to action: :index
    end
end

kontroller = BlogController.new
kontroller.send(:show)
ERB.render("show.html.erb",kontroller.intance_variables)
