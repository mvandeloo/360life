describe 'section goals' do
			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end

it 'should show a form for creating goals for every section'  do
				visit new_wheel_path			
					page.all(:css, '.question').each do |q|
						within q do
							choose 'Strongly agree'
						end
					end
				
				page.find('.homeButton').click
				visit new_goal_path
				expect(page).to have_css '.set_goal'		
			end	

it 'should raise an error if the goal has no name'  do
				visit new_wheel_path			
					page.all(:css, '.question').each do |q|
						within q do
							choose 'Strongly agree'
						end
					end
				
				page.find('.homeButton').click
				click_link 'Personal growth & development'
				click_button 'Create Goal'
				expect(page).to have_css '.set_goal'		
			end	

end


# paragraph

# id: "opener"

