# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Creating comments', type: :feature do
  before do
    login(email: 'test@user.com', password: 'qwerty')
    post_message(message: 'Hello, world!')
  end

  scenario 'User can comment on their own post' do
    click_link('Hello, world!')
    comment(body: 'this is a comment')
    expect(page).to have_content('this is a comment')
    expect(page).to have_content('Successfully commented!')
  end

  scenario 'User can comment on another users post' do
    click_link('Logout')
    login(email: 'test2@user.com', password: 'qwerty')
    visit '/'
    click_link('Hello, world!')
    comment(body: 'this is a comment on another users post')
    expect(page).to have_content('this is a comment on another users post')
    expect(page).to have_content('Successfully commented!')
  end
end
