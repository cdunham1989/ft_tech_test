feature 'Viewing Home Page' do
    scenario 'A user can see the site homepage' do
        visit('/')
        expect(page).to have_content "We welcome your feedback!"
    end

    scenario 'A user can add a rating to the site' do
        visit('/')
        fill_in :name, with: 'Mark'
        choose('2')
        click_button ('Submit')
        expect(current_path).to eq '/confirmation'
        expect(page).to have_content ("Thanks for your feedback.")
    end
end