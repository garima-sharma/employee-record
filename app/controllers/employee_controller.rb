class EmployeeController < ApplicationController
    def index
		@index=Emp.new
        @f=Dept.find(params[:id])
     end
     def create
        @f=Dept.find(params[:id])
	    @view=@f.emps.create(params[:sav])
        if @view.save
	    redirect_to :action=>'new'
        
        end
     end
        def new
        end
    def delete
    
    @delete=Emp.find(params[:id])
    @delete.destroy
    redirect_to :controller=>'dept',:action=>'show'
    end


    def view
	@view=Emp.find(params[:id])

    end

    def edit
	@edit=Emp.find(params[:id])
    end

    def update
	@update=Emp.find(params[:id])
 	@updates=@update.update_attributes(params[:emp])
 	redirect_to :controller=>'dept',:action=>'show'
    end
    def display
        @find=Dept.find(params[:id])
      @display=Emp.find(:all, :conditions=> {:dept_id=> params[:id]})

    end
end
