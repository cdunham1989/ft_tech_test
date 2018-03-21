feature 'Viewing Home Page' do
    scenario 'A user can see the site homepage' do
        visit('/')
        expect(page).to have_content "We welcome your feedback!"
    end
end