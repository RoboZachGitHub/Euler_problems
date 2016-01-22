# Ruby solution to Euler's Problem 3:
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143

largest_prime_factor = 1
test_number = 600851475143
#test_number = 1234
# start at highest possibility because ze are interested in largest prime
index = test_number

catch (:done) do
	until index == 1
		# first test if remainder is 0, then test if prime
		if test_number%index == 0
			index_2 = 2
			until index_2 == index + 1
				if index_2 == index
					puts "#{index} is the largest prime factor of #{test_number} "
					throw :done
				elsif index%index_2 == 0
					puts "#{index} is divisible by #{index_2}"
					break
				else
					index_2 += 1
				end
			end
		end 


		index -= 1
	end
end


