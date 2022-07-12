# Point 2.
class User
    attr_reader :name, :surname, :email, :phone_number

    def initialize(name, surname, email, phone_number)
        @name = name
        @surname = surname
        @email = email
        @phone_number = phone_number
    end

    # Sum all digits, ignore other characters
    def sum_digits_in_phone_number(num)
        total = 0
        for x in 0 .. num.length-1
            total += num[x].to_i
        end
        total
    end

    # Replacement for library "even?" function
    def my_even?(num)
        num % 2 == 0 ? true : false
    end

    # Override default implementation of 'to_s'
    # Let the instance variable to do they work
    def to_s
        "Even phone number: #{@phone_number}"
    end

end

# Point 4.
class Admin < User
end


# Point 3.
user_1 = User.new("Uzytkownik #1", "Nazwisko #1", "abc1@mail.pl", "111-111-111")
user_2 = User.new("Uzytkownik #2", "Nazwisko #2", "abc2@mail.pl", "222-222-222")
user_3 = User.new("Uzytkownik #3", "Nazwisko #3", "abc3@mail.pl", "333-333-333")

# Point 5.
admin_1 = Admin.new("Krzysztof", "Ktoś", "admin_1@mail.com", "123-456-789")
admin_2 = Admin.new("Marek", "Ixiński", "admin_2@mail.com", "123-456-788")

# Point 6.
all_users = Array.new()

all_users.push(user_1)
all_users.push(user_2)
all_users.push(user_3)
all_users.push(admin_1)
all_users.push(admin_2)

puts "===== All phones ======================="
all_users.each do |usr|
        puts usr.phone_number
end

puts "======================================="
# Point 7.
all_users.each do |usr|
    if usr.my_even?(usr.sum_digits_in_phone_number(usr.phone_number))
        puts "#{usr}"
    end
end
