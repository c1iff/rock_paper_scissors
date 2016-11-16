require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock_paper_scissors path', {:type => :feature}) do
  it('selects rock for player1 and scissors for player2') do
    visit('/')
    select('rock', from: 'player1')
    select('scissors', from: 'player2')
    click_button('Send')
    expect(page).to have_content('true')
  end

  it('selects paper for player1 and scissors for player2') do
    visit('/')
    select('paper', from: 'player1')
    select('scissors', from: 'player2')
    click_button('Send')
    expect(page).to have_content('false')
  end

  it('selects paper for player1 and paper for player2') do
    visit('/')
    select('paper', from: 'player1')
    select('paper', from: 'player2')
    click_button('Send')
    expect(page).to have_content('tie')
  end
end
