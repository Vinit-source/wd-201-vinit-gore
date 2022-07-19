def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

def parse_dns(dns_raw)
  dns_records = { :A => {}, :CNAME => {} }
  dns_raw.each do |line|
    if !(line.start_with?("#") or line.start_with?("\n"))
      line = line.split(", ").map { |cell| cell.strip }
      if line[0] == "A"
        dns_records[:A][line[1]] = line[2]
      elsif line[0] == "CNAME"
        dns_records[:CNAME][line[1]] = line[2]
      else
        puts "Error in zone file. #{line[0]} not an identified record type"
        return nil
      end
    end
  end
  return dns_records
end

def resolve(dns_records, lookup_chain, domain)
  if !(dns_records[:A].find { |k, v| k == domain } == nil)
    lookup_chain << dns_records[:A][domain]
    # puts lookup_chain
    return lookup_chain
  end
  if !(dns_records[:CNAME].find { |k, v| k == domain } == nil)
    lookup_chain << dns_records[:CNAME][domain]
    # puts lookup_chain
    return resolve(dns_records, lookup_chain, lookup_chain.last)
  end
  puts "Domain entry not present. Domain could not be resolved."
  return nil
end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
