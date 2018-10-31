class PersonalStoriesController < ApplicationController
  def index
  end

  def create
    @personal_story = PersonalStory.create(personal_story_params)
    @personal_story.save
    redirect_to personal_story_new_path(@personal_story)
  end

  def new
    @personal_story = PersonalStory.new
    @personal_story = PersonalStory.all
  end

  def update
  end

  def show
    
  end

  def delete
  end

  private

  def personal_story_params
  params.require(:personal_stories).permit(:story)
  end
end
