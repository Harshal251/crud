class AddController < ApplicationController
    def index
        @student = Student.all
    end
    
     
    def edit
        @l = Student.find(params[:id])
    end  
      
    
    def updatedata
        @filed = Student.find(params[:id])
        @filed.update(article_params(:nam,:email))
    end    

    def del
     @delete = Student.find(params[:id]) 
     @delete.destroy
    end   
    
    def show 
        @show = Student.find(params[:id])
    end    

    def new
        @form_data = Student.new
    end   

   
    
    def data
        @article = Student.new(article_params)
        if @article.save
            render "/add/msg"
        else
            render :new, status: :unprocessable_entity
        end
    end
    
   


    private
    def article_params(*args)
      params.require(:student).permit(:name,:email)
    end
end
 