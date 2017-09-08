require 'rails_helper'

RSpec.feature 'Add an exercise' do
  scenario 'creates an exercise' do
    exercise = FactoryGirl.create(:exercise)
    visit '/exercises'

    click_link 'Add new exercise'
    fill_in 'Title', :with => 'Burpee'
    fill_in 'Description', :with => 'Stuff'
    check 'exercise_muscle_group_full_body'
    click_button 'Create Exercise'

    expect(page).to have_content 'Burpee'
  end
end
