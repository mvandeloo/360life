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
				
				click_button 'Create Wheel'
				click_link 'Personal growth & development'
				expect(page).to have_css '.set_goal'		
			end	

end


paragraph

# id: "opener"

