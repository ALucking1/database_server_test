require 'spec_helper'

feature 'homepage' do
  scenario 'redirects to /set' do
    visit('/')
      expect(page).to have_current_path("/set")
  end
end

feature 'adding params to the query string' do
  scenario 'with a key and value' do
    visit('/set')
      expect(page).to have_current_path("/set?key=value")
  end
end
