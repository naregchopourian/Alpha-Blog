class ArticlesController < ApplicationController

before_action :article_id, only: [:edit, :update, :show, :destroy]


def index
@articles = Article.all
end  


def new
	@article = Article.new
end 


def edit 
end 




def create
	 
	@article = Article.new(article_params)
	@article.user = User.first 
	if @article.save
		flash[:success] = "Post was created"
		redirect_to article_path(@article)
	else 
		render 'new'
	end
end 




def update 
	if @article.update(article_params)
		flash[:success] = "Post was updated"
		redirect_to article_path(@article)
	else
		render 'edit'
	end
end




def show 

	article_id
end

def destroy 
	@article.destroy 
	flash[:danger] = "Post deleted"
	redirect_to articles_path
end



private

def article_id
	@article = Article.find(params[:id])
end 




def article_params
	params.require(:article).permit(:title, :description)
end
 
end

