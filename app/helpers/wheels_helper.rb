module WheelsHelper
	# def nest(count, hash, name, size="1")
	# 	nested = hash
	# 	1.upto(count) do |n|
	# 		opts = {name: name, size: size}
	# 		opts[:children] = [nested] unless nested.empty?

	# 		nested = hash.merge(opts)
	# 	end

	# 	return nested	
	# end


	def nesting_for_sections(wheel)
		children = []
		max_score = 20;

		wheel.answers.group_by(&:section).each do |section, answers|
			children << {name: section.section_name, size: answers.map(&:answer_value).sum}
		end

		{ name: 'Wheel of life', size:"1", children: children }
	end
	
end