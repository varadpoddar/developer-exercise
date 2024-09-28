class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # As ruby is not my native language, I learned some basic concepts and used them here.
    # Iterating through the string and replacing the words that exceed 4 characters
    # with "marklar" or "Marklar" based on the first letter of the word and keeping the
    # end-of-word punctuation intact based on regex. This looks like an inefficient approach,
    # as using the built in functions like map would have been better based on copilot solution, however this
    # is the simplest way I could think of.
    a = str.split(' ') # Split the string into words.
    for i in 0..a.length-1 do
      if a[i].length > 4
        if a[i][-1] =~ /[[:punct:]]/
          a[i] = a[i][0].upcase == a[i][0] ? "Marklar".cncat(a[i][-1]) : "marklar".concat(a[i][-1])
        else
          a[i] = a[i][0].upcase == a[i][0] ? "Marklar" : "marklar"
        end
      end
    end
    return a.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # Things I noted in the fibonacci sequence.
    # 1. Every 3rd number is even.
    # 2. The sum of the even numbers is half of the sum of all nth numbers.
    # I am going to generate the fibonacci to the even numbers only, ensuring
    # that we donot cross the nth number and then sum them up.
    # Steps:
    # 1. Initialize the fibonacci sequence with 2, 8.
    # 2. Loop while the next even fibonacci number is less than the
    #    nth number in the sequence.
    # 3. Generate the next even fibonacci number using the formula :
    #    4 * currentnum + previousnum, and add it to the sum. Increment the
    #    currentnum and previousnum.
    # 4. Return the sum.
    sum = 10
    currentnum = 8
    previousnum = 2
    currentn = 6
    loop do
      break if (currentn+3) > nth
      nextevennum = 4 * currentnum + previousnum
      sum += nextevennum
      previousnum = currentnum
      currentnum = nextevennum
      currentn += 3
    end
    return nth <= 5 ? 2 : sum
  end

end
