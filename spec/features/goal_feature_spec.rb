describe 'section goals' do
			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end

it 'should show a form for creating goals for every section'  do
				visit new_section_goal_path(Section.last)
				expect(page).to have_css '.new_goal'		
			end	

it 'should raise an error if the goal has no name'  do
				visit new_section_goal_path(Section.last)
				click_button 'Create Goal'
				expect(page).to have_css '.new_goal'		
			end	

it 'should redirect to signup after buttonclick if the user has filled out the form correctly'  do
				visit new_section_goal_path(Section.last)
				fill_in 'Title', with: 'Stop smoking'
				fill_in 'Due date', with: '2013-11-04'
				click_button 'Create Goal'
				expect(body).to match /window\.location.*goals/		
				visit("/goals")
				expect(page).to have_content 'Sign up'		
			end

end

# paragraph

# id: "opener"