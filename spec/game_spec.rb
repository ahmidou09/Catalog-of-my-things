require_relative '../classes/game/game'
require_relative '../classes/author/author'
require_relative '../classes/label/label'

describe Game do
  let(:publish_date) { '2022-10-26' }
  let(:multiplayer) { true }
  let(:last_played_at) { '2022-10-25' }
  let(:game) { Game.new(publish_date, multiplayer, last_played_at) }

  it 'should have multiplayer attribute' do
    expect(game.multiplayer).to be(true)
  end

  it 'should have a last played date' do
    expect(game.last_played_at).to eq(last_played_at)
  end

  it 'should inherit attributes from Item' do
    expect(game.publish_date).to eq(publish_date)
    expect(game.archived).to be(false)
  end

  it 'should be able to be archived if conditions met' do
    allow(game).to receive(:can_be_archived?).and_return(true)
    game.move_to_archive
    expect(game.archived).to be(true)
  end

  it 'should not be able to be archived if conditions not met' do
    allow(game).to receive(:can_be_archived?).and_return(false)
    game.move_to_archive
    expect(game.archived).to be(false)
  end
end
