module WheelsHelper
	def nest(count, hash, name,size="1",section_id)
		nested = hash
		1.upto(count) do |n|
			opts = {name: name, size: size, id: section_id}
			opts[:children] = [nested] unless nested.empty?

			nested = hash.merge(opts)
		end

		return nested	
	end


	def nesting_for_sections(wheel)
		children = []
		max_score = 20;
		children << nest(max_score, {}, "referance", "0.01"," ")

		wheel.answers.group_by(&:section).each do |section, answers|
			children << nest(answers.map(&:answer_value).sum, {}, section.section_name, section.id)
		end

		{ name: 'Wheel of life', children: children }
	end
	
end