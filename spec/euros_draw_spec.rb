require 'euros_draw'

describe EurosDraw do
  let(:euros_draw) { EurosDraw.new }

  it 'has the same number of people as teams' do
    expect(euros_draw.teams.length).to eq euros_draw.people.length
  end

  it 'allows a team to be randomly chosen for each person' do
    allow(euros_draw).to receive(:people).and_return ["Mike"]
    allow(euros_draw).to receive(:teams).and_return ["England"]
    expect(euros_draw.pick_team).to eq "Mike has got England"
  end

  # it 'stores the person-team pairs already chosen' do
  #
  # end
  #
  # it 'returns the full list of people-teams after all have been allocated' do
  #
  # end

end
