class EurosDraw
  attr_reader :teams, :people

  def initialise
    @teams = teams
    @people = people
  end

  def teams
    teams = ["Italy", "Switzerland", "Turkey", "Wales", "Belgium", "Russia", "Denmark", "Finland", "Ukraine", "Netherlands", "Austria", "England", "Croatia", "Czech Republic", "Scotland", "Spain", "Poland", "Sweden", "Slovakia", "Germany", "France", "Portugal"]
  end

  def people
    people = ["Alex", "Anita", "Arran", "Dana", "Eddie", "Ehelsan", "Emily", "Emma", "Goncalo", "Hannah", "Irina", "Juel", "Katerina", "Kelvin", "Leslie", "Mike", "Muza", "Niesoth", "Ryan C", "Ryan P", "Usna", "Yusuf"]
  end

  def pick_team
    shuffled_teams = teams.shuffle
    shuffled_people = people.shuffle
    n = 0
    while n < shuffled_people.length
      p shuffled_people[n] + " has got " + shuffled_teams[n]
      n += 1
    end
  end

  #   n = teams.length - 1
  #   while teams.length > 0 && people.length > 0
  #     random_team = teams.sample
  #     random_person = people.sample
  #     p "#{random_person} has got #{random_team}"
  #     teams.delete(random_team)
  #     people.delete(random_person)
  #   end
  #   p @chosen_teams
  # end
    # while teams.length > 0 && people.length > 0
    #   random_team = teams.sample
    #   random_person = people.sample
    #   p "#{random_person} gets #{random_team}"
    #   teams.delete("#{random_team}")
    #   people.delete("#{random_person}")
    # end

    # teams.each { |team| chosen_teams.store(team) }
    # people.each { |person| chosen_teams.store(person) }
    # p chosen_teams
    # people.each { |person| p person }
    # n = 20
    # while @teams.length > 0
    #   random_team = @teams[rand(n)]
    #   @chosen_teams.store(random_team)
    #   @teams.delete(random_team)
    #   n -= 1
    #   n = rand(@teams.length - 1)
    #   @chosen_teams.store(@team[n])
    #   team.delete(@team[n])
    # end
  # end
end

e = EurosDraw.new
e.pick_team
