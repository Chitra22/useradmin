class PostsController < ApplicationController
 
  before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!


    respond_to :html, :js

skip_before_filter :verify_authenticity_token



  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    # @posts = Post.order(:name).page params[:page]
    # @posts = Post.order("name").page(params[:page]).per(2)

      respond_to do |format|
        format.html
       format.js
    end

    if params[:search]
    @posts = Post.search(params[:search]).order("created_at DESC")
  else
    @posts = Post.all.order('created_at DESC')
  end
    
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
         @posts= Post.all
        respond_to do |format|
        format.html
       format.js
    end
  end

  # GET /posts/new
  def new
    @post = Post.new

    @user = current_user.id
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /posts/1/edit
  def edit
    @user = current_user.id
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @user = current_user
    @post = Post.new(post_params)
    # @post.created_by = current_user.email
    # @posts = Post.all
    respond_to do |format|
      if @post.save
        UserMailer.welcome_email(@user,@post).deliver_now
        format.html { redirect_to @post, notice: 'created' }
        format.js
      else
        format.html
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @posts = Post.all
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    #@post.destroy
    
  @post.destroy
 
 
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:name, :title, :content ,:user_id , :photo)
    end
end
