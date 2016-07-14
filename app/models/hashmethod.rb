require'prime'

class Hashmethod < ActiveRecord::Base

      def self.hashfunction pass
         hash={name:"honest",address:"jhkjhhjhj kjhjh",phonenumber:9994813212,mblnumber:nil}
       case pass
         when "k"
            puts "Keys:#{hash.keys}"
         when "v"
             puts "Values:#{hash.values}"
         when "check"
             #FORMAT:1
              # if hash.empty?
              #   puts "The hash is to Empty:#{hash.empty?}"
              # else
              #   puts "It contains Data:#{hash.empty?}"
              # end
             #FORMAT:2
            a=hash.empty? ? true : false
         when "haskey"
              b=hash.key?(:name) ? "The given key in the HASH:#{hash.key?(:name)}" : "The given key Not in the HASH:#{hash.key?(:name)}"
         when "hass"
              #d=hash.has_value?("honest") ? "The given value in the HASH:#{hash.has_value?("honest")}" : "The given Value Not in the HASH:#{hash.has_value?("honest")}"
             puts"Keysize:#{hash.size}"
             puts"Keylength:#{hash.length}"
             puts"HasSort:#{hash.sort.compact}"
         when "r"
            puts "Name:#{hash[:name]},Address:#{hash[:address]}"
         when "exc"
            puts "#{hash.except(:name)}"
         when "ext"
            puts "#{hash.extract!(:name)}"
         when "com"
            puts "#{hash.compact}"
         end
      end
      def self.recursiveFactorial(x)
          return 1 if x == 1
          return x * recursiveFactorial(x-1)
      end

      def self.fib(n)
        return n if (0..1).include? n
        return fib(n-1) + fib(n-2)
      end

      def self.prime(n)
          is_prime = true
          for i in 2..n-1
            if n % i == 0
              is_prime = false
            end
          end
          puts "#{n} is prime!" if is_prime
          puts "#{n} is not prime."
      end
      def self.perfectnumber(n)
        sum=0
           for i in n-1
              sum=sum+i  if n%i==0
           end
           puts "The number #{n} is Perfectnumber:" if sum==n
           puts "The number #{n} is Not Perfectnumber:"
      end




end
