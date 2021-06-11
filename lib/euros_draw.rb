class EurosDraw
  attr_reader :teams, :people

  def initialize
    @teams = ["Italy", "Switzerland", "Turkey", "Wales", "Belgium", "Russia",
      "Denmark", "Finland", "Ukraine", "Netherlands", "Austria", "England",
      "Croatia", "Czech Republic", "Scotland", "Spain", "Poland", "Sweden",
      "Slovakia", "Germany", "France", "Portugal"]
    @people = ["Alex", "Anita", "Arran", "Dana", "Eddie", "Ehelsan", "Emily",
      "Emma", "Goncalo", "Hannah", "Irina", "Juel", "Katerina", "Kelvin",
      "Leslie", "Mike", "Muza", "Niesoth", "Ryan C", "Ryan P", "Usna", "Yusuf"]
  end

  def pick_team
    while teams.length > 0 && people.length > 0
      random_team = teams.sample
      random_person = people.sample
      p "#{random_person} has got #{random_team}"
      teams.delete(random_team)
      people.delete(random_person)
    end
  end
end

euros = EurosDraw.new
euros.pick_team
