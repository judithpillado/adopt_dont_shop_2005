require 'rails_helper'

RSpec.describe 'shelters index page', type: :feature do
  it 'can see all shelter names' do
    shelter_1 = Shelter.create(name: 'PAWS',
                               address: '1997 N Clybourn Ave',
                               city: 'Chicago',
                               state: 'IL',
                               zip: '60614'
                              )
    shelter_2 = Shelter.create(name: 'Animal Rescue Foundation',
                               address: '2890 Mitchell Drive',
                               city: 'Walnut Creek',
                               state: 'CA',
                               zip: '94598'
                              )
    shelter_3 = Shelter.create(name: 'Animal Welfare League',
                               address: '10305 Southwest Highway',
                               city: 'Chicago Ridge',
                               state: 'IL',
                               zip: '60415'
                              )

    visit '/shelters'

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Address: #{shelter_1.address}, #{shelter_1.city}, #{shelter_1.state} #{shelter_1.zip} ")

    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Address: #{shelter_2.address}, #{shelter_2.city}, #{shelter_2.state} #{shelter_2.zip} ")

    expect(page).to have_content(shelter_3.name)
    expect(page).to have_content("Address: #{shelter_3.address}, #{shelter_3.city}, #{shelter_3.state} #{shelter_3.zip} ")
  end

end
