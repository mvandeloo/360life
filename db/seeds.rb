# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


environment = Section.create(section_name: 'Environment')
health = Section.create(section_name: 'Health')
finance = Section.create(section_name: 'Money')
growth = Section.create(section_name: 'Personal Growth')
recreation = Section.create(section_name: 'Fun & Recreation')
relationship = Section.create(section_name: 'Partner & Relationship')
work = Section.create(section_name: 'Career')
family = Section.create(section_name: 'Friends & Family')

environment.questions.create([{question: 'My home is an appropriate expression of who I am.'}, {question: 'My home is clean, organized and clutter-free.'}, {question: 'In my home I am surrounded by things that I love and that have meaning to me.'}, {question: 'I feel safe and comfortable in my home environment.'}])
health.questions.create([{question: 'I am satisfied with my general level of health, vitality and well-being.'}, {question: 'I take responsibility for my physical well-being and act accordingly.'}, {question: 'I exercise regularly.'},  {question: 'I consume a nutritious, well-balanced diet.'}])
finance.questions.create([{question: 'I spend my money wisely and according to budget.'}, {question: 'I usually have enough money to do or buy the things I want.'}, {question: 'I plan wisely and my financial future looks bright.'},  {question: 'I feel that I am in control of my finances.'}])
growth.questions.create([{question: 'I regularly participate in activities and learning that grow and expand me.'}, {question: 'I like to challenge and push myself.'}, {question: 'I read at least 1-2 books per month.'},  {question: 'I regularly invest both my time and money in educational materials'}])
recreation.questions.create([{question: 'I often participate in actions I feel passionate about (i.e. dancing, playing an instrument, drawing etc.).'}, {question: 'I make time for my hobbies.'}, {question: 'I laugh often.'},  {question: 'I create plenty of space in my life to relax and enjoy myself with others.'}])
relationship.questions.create([{question: 'My partner listens to me and is sensitive to my needs.'}, {question: 'My partner often expresses his or her feelings towards me.'}, {question: 'My partner understands and supports me.'},  {question: 'My partner and I have fun together.'}])
work.questions.create([{question: 'I enjoy my work.'}, {question: 'I see opportunity for growth and development in my position.'}, {question: 'I like my work environment and the people I with work.'},  {question: 'My work allows me to afford a good work-life balance.'}])
family.questions.create([{question: 'I feel valued, understood and respected by my family members.'}, {question: 'I often spend quality time with my family.'}, {question: 'My friends and I are highly compatible.'},  {question: 'I have a sufficient number of close friends who are trustworthy, dependable and honest.'}])

