require_relative '../classes/book/book'
require_relative '../classes/author/author'
require_relative '../classes/label/label'

describe Book do
  let(:publish_date) { '2022-10-26' }
  let(:publisher) { 'Test Publisher' }
  let(:cover_state) { 'good' }
  let(:book) { Book.new(publish_date, publisher, cover_state) }

  it 'should have a publisher' do
    expect(book.publisher).to eq(publisher)
  end

  it 'should have a cover state' do
    expect(book.cover_state).to eq(cover_state)
  end

  it 'should inherit attributes from Item' do
    expect(book.publish_date).to eq(publish_date)
    expect(book.archived).to be(false)
  end

  it 'should be able to be archived if cover state is bad' do
    allow(book).to receive(:can_be_archived?).and_return(true)
    book.cover_state = 'bad'
    book.move_to_archive
    expect(book.archived).to be(true)
  end

  it 'should not be able to be archived if cover state is good' do
    allow(book).to receive(:can_be_archived?).and_return(false)
    book.move_to_archive
    expect(book.archived).to be(false)
  end
end
