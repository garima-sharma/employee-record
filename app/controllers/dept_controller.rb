class DeptController < ApplicationController
	before_filter :authenticate_admin!, :except => [:show, :index]
	def index1
	end
	def index
       @a=Dept.new
	end
	def save
		@view=Dept.new(params[:sav])
		@view.save
		redirect_to :action=>'show'
	end
	def show
		@show=Dept.all
	end
	def view
		@view=Dept.find(params[:id])
	end
	def delete
        @delete=Dept.find(params[:id])
        @delete.destroy
        redirect_to :action=>'show'
    end
    def edit
	    @edit=Dept.find(params[:id])
    end
    def update
	    @update=Dept.find(params[:id])
 	    @updates=@update.update_attributes(params[:dept])
 	    redirect_to :action=>'show'
    end
end
