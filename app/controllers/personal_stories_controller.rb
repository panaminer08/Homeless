class PersonalStoriesController < ApplicationController
  def index
    @personal_story = PersonalStory.all
  end

  def create
    @personal_story = PersonalStory.create(personal_story_params)
    @personal_story.save
    redirect_to personal_story_path(@personal_story)
  end

  def new
    @personal_story = PersonalStory.new
  end

  def update
  end

  def show
    @personal_story = PersonalStory.all
  end

  def delete
  end

  private

  def personal_story_params
  params.require(:personal_story).permit(:story)
  end
end
