# Enter your procedural solution here!
def largest_prime_factor(input)
    prime = input
    limit = Math.sqrt(input).to_i
    (2..limit).each do |i|
        if prime <= 1
            break
        end
        while (prime > i && prime % i == 0) do
            prime /= i 
        end
    end
    return prime
end