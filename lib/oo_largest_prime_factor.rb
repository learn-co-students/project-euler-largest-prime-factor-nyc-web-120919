# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :number

    def initialize(input)
        @number = input
        limit = Math.sqrt(input).to_i
        (2..limit).each do |i|
            if @number <= 1
                break
            end
            while (@number > i && @number % i == 0) do
                @number /= i 
            end
        end
    end
end