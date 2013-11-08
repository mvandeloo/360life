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
growth.questions.create([{question: 'I regularly participate in activities and learning that grow and expand me.'}, {question: 'I like to challenge and push myself.'}, {question: 'I read at least 1-2 books per month.'},  {question: 'I regularly invest both my time and money in educational materials.'}])
recreation.questions.create([{question: 'I often participate in activities I feel passionate about (i.e. dancing, playing an instrument, drawing etc.).'}, {question: 'I make time for my hobbies.'}, {question: 'I laugh often.'},  {question: 'I create plenty of space in my life to enjoy myself with others.'}])
relationship.questions.create([{question: 'My partner listens to me and is sensitive to my needs.'}, {question: 'My partner often expresses his or her feelings towards me.'}, {question: 'My partner understands and supports me.'},  {question: 'My partner and I have fun together.'}])
work.questions.create([{question: 'I enjoy my work.'}, {question: 'I see opportunity for growth and development in my position.'}, {question: 'I like my work environment and the people I work with.'},  {question: 'My work allows me to afford a good work-life balance.'}])
family.questions.create([{question: 'I feel valued, understood and respected by my family members.'}, {question: 'I often spend quality time with my family.'}, {question: 'My friends and I are highly compatible.'},  {question: 'I have a sufficient number of close friends who are trustworthy, dependable and honest.'}])


environment.suggestions.create([{title: 'Clean out your closet and donate some items to charity.'}, {title: 'Get organized.'}, {title: 'Take inventory in your home and if you haven’t used an item for more than a year then throw or give it away.'}, {title: 'Fix or dispose of items that are broken or aged.'}])
health.suggestions.create([{title: 'Drink more water.'}, {title: 'Eat 2-3 servings of fruit and vegetables a day.'}, {title: 'Skip dessert.'},  {title: 'Take the stairs.'}])
finance.suggestions.create([{title: 'Create a budget.'}, {title: 'Pay off debt.'}, {title: 'Have only one credit card in your possession.'},  {title: 'Aim to build up savings over time.'}])
growth.suggestions.create([{title: 'Read a book on a personal subject of choice.'}, {title: 'Read a book on a subject that you are totally unfamiliar with.'}, {title: 'Read Books on personal growth and motivation.'},  {title: 'Write articles or guest blog posts.'}])
recreation.suggestions.create([{title: 'Make time to persue a skill or hobby you enjoy.'}, {title: 'Make an effort.'},  {title: 'Find activities in your local community.'}])
relationship.suggestions.create([{title: 'Make a list of everything you appreciate, admire or love about your partner and have them do the same.'}, {title: 'Spend quality time together on a regular basis.'}, {title: 'Try a new activity together.'},  {title: 'Give your partner a pleasant surprise.'}])
work.suggestions.create([{title: 'Become an expert, create a blog.'}, {title: 'Further education, take some classes.'}, {title: 'Find a mentor.'}, {title: 'Update your resume.'}, {title: 'Improve public speaking skills.'}, {title: 'Join LinkedIn and start networking.'}])
family.suggestions.create([{title: 'Plan a family activity at least once a week.'}, {title: 'Plan a family vacation.'}, {title: 'Eat together as a family at least three times a week.'}, {title: 'Pray together.'}, {title: 'Hug your children daily.'}])









