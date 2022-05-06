# coding: utf-8

require "capybara/rspec"
require_relative "../app"

Capybara.app = Battle

feature 'Fills in player names' do
  scenario 'players can fill in their names, submit a form, and see those names on-screen' do
    visit("/")
    fill_in :name1 , with: "Gawain"
    fill_in :name2 , with: "Kieran"
    click_button "Submit"
    expect(page).to have_content "Player 1: #{name1} ready! vs Player 2: #{name2} ready!"
  end 
end 
