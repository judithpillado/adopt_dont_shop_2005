require 'rails_helper'

RSpec.describe 'shelters index page', type: :feature do
  it 'can see all shelter names' do
    shelter_1 = Shelter.create(name: 'PAWS')
    shelter_2 = Shelter.create(name: 'Animal Rescue Foundation')
    shelter_3 = Shelter.create(name: 'Animal Welfare League')

    visit '/shelters'

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content(shelter_3.name)
  end
end
