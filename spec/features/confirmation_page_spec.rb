feature 'Viewing Confirmation Page' do
    scenario 'A user can see the site homepage' do
        visit('/confirmation')
        expect(page).to have_content "Thanks for your feedback."
    end

    scenario 'A user can get back to the homepage from this page' do
        visit('/confirmation')
        click_button ('Back')
        expect(current_path).to eq '/'
    end
end