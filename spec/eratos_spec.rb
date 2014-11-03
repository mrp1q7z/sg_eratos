require File.expand_path(File.dirname(__FILE__) + '/../eratos')
require 'prime'

describe Eratos do
  specify { expect(Eratos.get_prime_number(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  specify { expect(Eratos.get_prime_number(30)).to eq Prime.each(30).to_a }
  specify { expect(Eratos.get_prime_number(120)).to eq Prime.each(120).to_a }
end
