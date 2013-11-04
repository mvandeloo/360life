describe 'section goals' do
			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end

it 'should show a form for creating goals for every section'  do
				visit new_section_goal_path(section = 5)
				expect(page).to have_css '.set_goal'		
			end	

it 'should raise an error if the goal has no name'  do
				visit new_section_goal_path(section = 5)
				click_button 'Create Goal'
				expect(page).to have_css '.set_goal'		
			end	

end


# paragraph

# id: "opener"

