# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ja.net/ac.uk/property_nameservers_with_ipv6.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ja.net.rb'

describe Whois::Record::Parser::WhoisJaNet, "property_nameservers_with_ipv6.expected" do

  subject do
    file = fixture("responses", "whois.ja.net/ac.uk/property_nameservers_with_ipv6.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(7)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("authdns0.csx.cam.ac.uk")
      expect(subject.nameservers[0].ipv4).to eq("131.111.8.37")
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("authdns0.csx.cam.ac.uk")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq("2001:630:212:8::d:a0")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("dns0.cl.cam.ac.uk")
      expect(subject.nameservers[2].ipv4).to eq("128.232.0.19")
      expect(subject.nameservers[2].ipv6).to eq(nil)
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("dns0.cl.cam.ac.uk")
      expect(subject.nameservers[3].ipv4).to eq(nil)
      expect(subject.nameservers[3].ipv6).to eq("2001:630:212:200::d:a0")
      expect(subject.nameservers[4]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[4].name).to eq("dns0.eng.cam.ac.uk")
      expect(subject.nameservers[4].ipv4).to eq("129.169.8.8")
      expect(subject.nameservers[4].ipv6).to eq(nil)
      expect(subject.nameservers[5]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[5].name).to eq("ns2.ic.ac.uk")
      expect(subject.nameservers[5].ipv4).to eq(nil)
      expect(subject.nameservers[5].ipv6).to eq(nil)
      expect(subject.nameservers[6]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[6].name).to eq("sns-pb.isc.org")
      expect(subject.nameservers[6].ipv4).to eq(nil)
      expect(subject.nameservers[6].ipv6).to eq(nil)
    end
  end
end
