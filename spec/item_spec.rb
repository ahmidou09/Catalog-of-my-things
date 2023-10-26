require_relative '../classes/item/item'
require_relative '../classes/author/author'
require_relative '../classes/label/label'
require_relative '../classes/genre/genre'

describe Item do
  let(:publish_date) { '2022-10-26' }
  let(:item) { Item.new(publish_date) }

  it 'should have a publish date' do
    expect(item.publish_date).to eq(publish_date)
  end

  it 'should not be archived initially' do
    expect(item.archived).to be(false)
  end

  it 'should add label to item' do
    label = Label.new('Test Label', 'Red')
    item.add_label(label)
    expect(item.label).to eq(label)
    expect(label.items).to include(item)
  end

  it 'should add author to item' do
    author = Author.new('John', 'Doe')
    item.add_author(author)
    expect(item.author).to eq(author)
    expect(author.items).to include(item)
  end

  it 'should add genre to item' do
    genre = Genre.new('Test Genre')
    item.add_genre(genre)
    expect(item.genre).to eq(genre)
  end

  it 'should move item to archive if conditions met' do
    allow(item).to receive(:can_be_archived?).and_return(true)
    item.move_to_archive
    expect(item.archived).to be(true)
  end

  it 'should not move item to archive if conditions not met' do
    allow(item).to receive(:can_be_archived?).and_return(false)
    item.move_to_archive
    expect(item.archived).to be(false)
  end
end
