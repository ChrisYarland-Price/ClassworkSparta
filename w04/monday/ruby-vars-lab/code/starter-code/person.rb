class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 24
    end

    def children
        # create children array here
        children = ["bob","liam","chris","martha"]

    end

    def address

        # create address hash here
        address = {
            house_number: 79,
            street: "Saxon Crossway",
            town: "winsford",
            county: "Cheshire",
            postcode: "CW7 22DN",
            email_addresses: ["Bob@go.com","bo@gmail.com"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end