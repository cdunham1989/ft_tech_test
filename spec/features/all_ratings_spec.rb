feature 'Viewing All Ratings' do
    scenario 'A user can view the all ratings page' do
        visit('/')
        click_button('View All Ratings')
        expect(current_path).to eq '/all_ratings'
        expect(page).to have_content ('Here are all the ratings submitted so far')
    end

    scenario 'A user can view all the ratings submitted so far' do
        visit('/')
        fill_in :name, with: 'Mark'
        choose('2')
        click_button ('Submit')
        click_button('Back')
        click_button('View All Ratings')
        expect(page).to have_content ('Name: Mark  Rating: 2')
    end

    scenario 'Name field should not show up for ratings where name was not given' do
        visit('/')
        choose('1')
        click_button ('Submit')
        click_button('Back')
        click_button('View All Ratings')
        expect(page).not_to have_content ('Name: Chris Rating: 1')
        expect(page).to have_content ('Rating: 2')
    end

    scenario 'A user can get back to the homepage from this page' do
        visit('/all_ratings')
        click_button ('Back')
        expect(current_path).to eq '/'
    end
end