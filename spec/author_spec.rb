require_relative '../classes/item/item'
require_relative '../classes/author/author'

describe Author do
  let(:author) { Author.new('John', 'Doe') }

  it 'should have a first name' do
    expect(author.first_name).to eq('John')
  end

  it 'should have a last name' do
    expect(author.last_name).to eq('Doe')
  end

  it 'should have an empty list of items initially' do
    expect(author.items).to be_empty
  end

  it 'should be able to add an item' do
    item = Item.new('2022-10-26')
    author.add_item(item)
    expect(author.items).to include(item)
    expect(item.author).to eq(author)
  end
end
