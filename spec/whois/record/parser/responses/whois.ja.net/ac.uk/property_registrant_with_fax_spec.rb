# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ja.net/ac.uk/property_registrant_with_fax.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ja.net.rb'

describe Whois::Record::Parser::WhoisJaNet, "property_registrant_with_fax.expected" do

  subject do
    file = fixture("responses", "whois.ja.net/ac.uk/property_registrant_with_fax.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq(nil)
      expect(subject.registrant_contacts[0].name).to eq("Imperial College Hostmaster")
      expect(subject.registrant_contacts[0].organization).to eq("Imperial College of Science, Technology and Medicine")
      expect(subject.registrant_contacts[0].address).to eq("ICT\nImperial College\nExhibition Road\nLondon\nSW7 2AZ\nUnited Kingdom")
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq("+44 20 7594 6965")
      expect(subject.registrant_contacts[0].fax).to eq("+44 20 7594 6958")
      expect(subject.registrant_contacts[0].email).to eq("hostmaster@ic.ac.uk")
    end
  end
end
