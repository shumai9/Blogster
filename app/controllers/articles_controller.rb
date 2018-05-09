class ArticlesController < ApplicationController
  # all the below methods really are like place holders for model- db object relation + logic
  # and
  layout 'admin'

  def index #list records
    @articles = Article.all.sorted
    
     @result = @articles.search(params[:title]) if (params[:title]) != ''
     
  end

  def show #list single
   @article = Article.find(params[:id])
  end

  def new #create
    @article = Article.new({:title => 'fill details'})
    @article_count = Article.count + 1

  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article #{@article.title} was created successfully"       
      redirect_to(articles_path)
    else
       @article_count = Article.count + 1
      render('new')
    end

  end

  def edit # 
    @article = Article.find(params[:id])
    @article_count = Article.count
  end

  def update
     @article = Article.find(params[:id]) 
    if @article.update_attributes(article_params)
      redirect_to(article_path(@article))
      flash[:notice] = "Article #{@article.title} was updated successfully"
    else
       @article_count = @article.count
      render('edit')
    end
  end
 
  def delete 
    @article = Article.find(params[:id])  
    flash[:alert] = "Are you sure u want to delete #{@article.title}"   
    render('delete')
  end

  def destroy    
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article #{@article.title} was deleted successfully"
    redirect_to(articles_path)
  end


  private

  def article_params
    params.require(:article).permit(:title, :author,:position, :body, :visible, :created_at, :created_at)
  end
end

##Notes
#@article = Article.new(params[:article]) # form array gives error due to multipl assignment
# def post
#    render('post')  
#  end

#  def uturn
#    redirect_to(:action => 'bloged')
#  end
#  def ruby
#    redirect_to('http://ruby-doc.org/')
#  end
