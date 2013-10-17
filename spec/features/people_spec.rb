require 'spec_helper'

describe "People" do
  let(:valid_attributes) { { "name" => "John Dough", "address_email" => "john.dough@example.com" } }

  # describe "GET /people" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get people_path
  #     response.status.should be(200)
  #   end
  # end

  describe "GET /people/1.json" do
    let!(:person) { Person.create valid_attributes }

    it "gets json" do
      visit "/people/#{person.id}.json"
      json = JSON.parse page.body
      expect(json).to eql({"id" => person.id, "name" => "John Dough", "address_email" => "john.dough@example.com"})
    end
  end

  describe "GET /people/1.json" do
    let!(:person) { Person.create valid_attributes }
    let!(:person2) { Person.create name: 'Jane Doe', address_email: 'jane.doe@example.com' }

    it "gets json" do
      visit "/people.json"
      json = JSON.parse page.body
      expect(json).to eql([
        {"id" => person.id, "name" => "John Dough", "address_email" => "john.dough@example.com"},
        {"id" => person2.id, "name" => "Jane Doe", "address_email" => "jane.doe@example.com"}
      ])
    end
  end
end
