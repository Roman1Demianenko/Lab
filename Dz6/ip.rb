def valid_ipv4?(str)
  parts = str.split('.')
  return false unless parts.length == 4

  parts.each do |part|
    return false unless part.match(/^\d+$/)
    return false unless part.to_i >= 0 && part.to_i <= 255
    return false unless part.to_i.to_s == part
  end

  return true
end

def get_ipv4_from_user
  puts "Введіть IPv4-адрес: "
  ip_address = gets.chomp
  if valid_ipv4?(ip_address)
    puts "Це IPv4-адрес."
  else
    puts "Це не є IPv4-адрес."
  end
end

get_ipv4_from_user