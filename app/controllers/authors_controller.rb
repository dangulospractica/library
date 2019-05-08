class AuthorsController < ApplicationController
    
    #get
    def index
        authors = Author.all
        render json: authors, status: 200
    end
    #get
    def show
        author = Author.find(params[:id])
        render json: author, status: 200
    end
    #post
    def create
        author = Author.create(author_params)
        if author.save
            render json: author, status: 201
        else
            render json: author.errors,status: unprocesable_entity
        end
    end
    #put/patch
    def update
        author = Author.find(params[:id])
        if author.update(author_params)
            render json: author , status: updated_entity
        else
            render json: author.errors, status: unprocesable_entity
        end
    end
    
    #DELETE
    def destroy
        
    end
    
    def author_params
       params.require(:author).permit(:name, :age) 
    end
    
end
