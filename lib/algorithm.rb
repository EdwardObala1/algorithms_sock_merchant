class Matchingsock
   def pairs(socks)
    # using a hash/dictionary to store the sock colour and pair number
    # time complexity of creating a dictionary
    sock_pairs = {}

    # time complexity of going through the socks of o(n)
    socks.each do |sock|  
        # time of insertion in a hash o(1)
      sock_pairs.include?(sock) ? sock_pairs[sock] += 1 : sock_pairs[sock] = 1
    end
    # created storage which is 0(1) as value will be added upon in loop and not expanded
    number_of_pairs = 0

    # another loop with 0(n) time
    sock_pairs.values.each do |pair|
        if pair > 1
            number_of_pairs += (pair/2)
        else
            number_of_pairs += 0
        end
    end

    number_of_pairs
   end
end