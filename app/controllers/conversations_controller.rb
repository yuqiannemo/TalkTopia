class ConversationsController < ApplicationController
  def index
    if params[:tag_id]
      @conversations = Tag.find(params[:tag_id]).conversations
    else
      @conversations = Conversation.all
    end
  end

  def update
    @conversation = Conversation.find(params[:id])

    if @conversation.update(conversation_params)
      redirect_to @conversation, notice: 'Conversation was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @conversation = Conversation.new
    @tags = Tag.all
    @categories = Category.all
  end

  def edit
    @conversation = Conversation.find(params[:id])
    @tags = Tag.all
    @categories = Category.all
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
    redirect_to conversations_path, notice: 'Conversation was successfully deleted.'
  end


  def create
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      redirect_to @conversation, notice: 'Conversation was successfully created.'
    else
      render :new
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title, :content, :tag_ids, category_ids: [])
  end

end