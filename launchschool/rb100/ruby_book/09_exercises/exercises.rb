1) arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   
   arr.each { |x| puts x }

2) arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

   arr.each do |num|
     if num > 5
       puts num
     end
   end

3) arr.select { |num| num.odd? }
   
   arr2 = arr.select { |num| num.odd? }

4) arr.push(11)
   arr.unshift(0)

5) arr.delete(11)
   arr.push(3)

6) arr.uniq!

7) Arrays are ordered and indexed collections of objects, while a Hash is a collection of key-value pairs.

8) hash = { Kevin: 17, Kayla: 16 }

9) 1. h[:b] 
   2. h[:e] = 5 
   3. h.delete_if { |key, value| value < 3.5 }

10) Yes. hash = { numbers: [1, 2, 3] }
    arr = [ {number: 1}, {number: 2}, {number: 3} ]

11) contacts["Joe Smith"][:email] = contact_data[0][0]
    contacts["Joe Smith"][:address] = contact_data[0][1]
    contacts["Joe Smith"][:phone] = contact_data[0][2]
    contacts["Sally Johnson"][:email] = contact_data[1][0]
    contacts["Sally Johnson"][:address] = contact_data[1][1]
    contacts["Sally Johnson"][:phone] = contact_data[1][2]

12) contacts["Joe Smith"][:email]
    contacts["Sally Johnson"][:phone]

13) arr.delete_if { |letter| letter.start_with?("s") }
    arr.delete_if { |letter| letter.start_with?("s", "w") }

14) a = a.map { |pairs| pairs.split }
    a = a.flatten
    a

15) It will output, "These hashes are the same!"

16) contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
    contacts = {"Joe Smith" => {}}
    fields = [:email, :address, :phone]

    contacts.each do |name, hash|
      fields.each do |field|
        hash[field] = contact_data.shift
      end
    end
