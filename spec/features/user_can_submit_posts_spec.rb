# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  scenario 'Can submit posts and view them' do
    login(email: 'test@user.com', password: 'qwerty')
    post_message(message: 'Hello, world!')
    expect(page).to have_content('Hello, world!')
  end

  scenario 'Can view posts newest first' do
    login(email: 'test@user.com', password: 'qwerty')
    Timecop.freeze(time = Time.now) do
      post_message(message: 'Hello, world!')
    end
    post_message(message: 'Bye, world!')
    expect(page).to have_content "#{time.strftime('%Y-%m-%d %k:%M')}\nHello, world!"
  end

  scenario 'Can view posts newest first' do
    login(email: 'test@user.com', password: 'qwerty')
    Timecop.freeze(time = Time.now) do
      post_message(message: 'Hello, world!')
    end
    expect(page).to have_content time.strftime('%Y-%m-%d %k:%M').to_s
  end

  scenario 'Redirects to index if not logged in' do
    visit '/users/1/posts/new'
    expect(current_path).to eq '/'
  end
end
