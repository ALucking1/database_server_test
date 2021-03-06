require 'spec_helper'

feature 'routes' do
  scenario 'homepage is set to /' do
    visit('/')
      expect(page).to have_current_path("/")
  end

  scenario 'setting params is set to /set' do
    visit('/set')
      expect(page).to have_current_path("/set")
  end
end
