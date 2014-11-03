class Eratos
  def self.get_prime_number(x)
    return nil if x < 2

    search_list = (2..x).to_a
    prime_number = []
    end_val = Math.sqrt(x)

    begin
      first_val = search_list.first
      prime_number.push(first_val)
      search_list.reject! do |v|
        (v % first_val) == 0
      end
    end until (first_val > end_val)

    prime_number + search_list
  end
end

if $0 == __FILE__
  p Eratos.get_prime_number(ARGV[0].to_i)
end
