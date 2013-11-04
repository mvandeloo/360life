module WheelsHelper
	def nest(count, hash, name, size="1")
		nested = hash
		1.upto(count) do |n|
			opts = {name: name, size: size}
			opts[:children] = [nested] unless nested.empty?

			nested = hash.merge(opts)
		end

		return nested	
	end


	def nesting_for_sections(wheel)
		children = []
		max_score = 20;
		children << nest(max_score, {}, "referance", "0.01")

		wheel.answers.group_by(&:section).each do |section, answers|
			children << nest(answers.map(&:answer_value).sum, {}, section.section_name)
		end

		{ name: 'Wheel of life', children: children }
	end
	
end