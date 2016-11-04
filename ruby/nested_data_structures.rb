#Coffee shop

# airplane = {
#     first_class: {
#         pretty_name: 'First Class',
#         seat_info: {
#             total_seats: 6,
#             seats_available: 4
#         },
#         meals: [
#             "Leg of Pampered Lamb", 
#             "Kale Salad"
#         ]
#     },
#     business_class: {
#         pretty_name: 'Business Class',
#         seat_info: {
#             total_seats: 12,
#             seats_available: 9
#         },
#         meals: [
#             "Sustainably Cultivated Lobster with Housemade Butter", 
#             "Kale Salad"
#         ]
#     },
#     coach: {
#         pretty_name: 'Coach',
#         seat_info: {
#             total_seats: 50,
#             seats_available: 23
#         },
#         meals: []
#     }
# }



def angry_manager(command = "FIND THEM!",level = 1)
    angry = "ヽ༼ ಠ益ಠ ༽ﾉ"
    more_angry = "(╯ಠ益ಠ）╯︵ ┻━┻"
    most_angry = "┻━┻ ︵ヽ(>益<)ﾉ︵﻿ ┻━┻"
    sleep(2)
    puts "\nEMPLOYEE!"
    case level
      when 1
        puts "#{angry}"
      when 2
        puts "#{more_angry}"
      when 3
        puts "#{most_angry}"
      else
        puts "#{angry}"
      end
    puts "#{command}"
end





cafe = {
  :'behind bar' => {
    :'chalkboard' => {
      :seasonal_specials => [
        "Pumpkin coffee",
        "Pumpkin cookies",
        "Pumpkin scones"
        ],
      :holiday_greeting =>  "Happy halloween",
      :reminder => "Stop asking for pumpkin pie"
      },
    :furniture =>  [
      "stool"
      ],
    :equipment =>  [
      "espresso_machine",
      "drip maker",
      "cold brew tub",
      "tea silos"
      ],
    :employees =>  [
      "Jimmy",
      "Josie",
      "Juan"
    ]
    },

  :'main floor' => {
    :sections =>  {
      :front_window => {
        :outlets => 1,
        :seating => {
          'n_seats' => 10,
          'empty_seats' => 0
        },
        :number_of_laptops => 9,
        :tension_level => "high"
        },
      :back_floor => {

        },
      :bar => {
        :seating => {
          'n_seats' => 8,
          'empty_seats' => 7
        },
        :danger_level => "splash zone at seaworld"

      }
    },
    :ambiance =>  "hip",
    :playlist =>  [
      "Solange",
      "Slayer",
      "Beethoven",
      "Blink-182"
      ]
    },

  :'bathroom' => {
    :graffiti =>  [
      "comparing the mayor to Stalin",
      "stall door proselytizing",
      "incredibly well drawn cartoon character vomiting rainbows",
      "comment section"
      ],
    :stall_quantity =>  "2 less than code",
    :'out of toilet paper' =>  true
    },

  :'back room' => [
    "single mop", 
    "bags of coffee beans", 
    "spare espresso machine parts", 
    "bucket", 
    "bucket", 
    "bucket", 
    "bucket", 
    "bucket", 
    "bucket", 
    bucket = [
      "manager's pack of cigarettes",
      "lighter"
      ]
    ],

  :'patio' => {
    :furniture =>  [
      "chair",
      "chair",
      "chair",
      "chair",
      "chair",
      "chair",
      "chair",
      "chair",
      "table",
      "table",
      "wobbly table"
      ],
    :aspiring_novelists => {
      :'currently writing' => [
        "Very put together blond woman"
      ],
      :'currently talking loudly about their novel' => [
        "Guy in suit",
        "Punk lady with antler tattoos",
        "Hipster dad with adorable baby",
      ],
      :cigarette_brands =>  [
      "American spirit's",
      "Parliaments",
      "Hand-rolled"
      ],
      :'overheard book topics' => "Self help"
      },
    :people_watching =>  "excellent",
    :ambiance =>  "at least it's not farmer's market day"
    }
}

outdoor_ambiance = cafe[:'patio'][:ambiance]
puts "~~ Outdoors Ambiance ~~\n  #{outdoor_ambiance}"


puts "......................(╬ ಠ益ಠ)\nWhere the heck are my cigarettes?!"
sleep(2)
puts "(ಠ益ಠ ╬)......................\nI could've sworn... back room...."
angry_manager
sleep(1)

puts "\n\n(´･_･`)"
puts "Let's see if they're in the back room?"

contents = cafe[:'back room']
b_count = 0
contents.each do |x|
  if x == "bucket" and b_count <= 2
    b_count += 1
    puts "And back here it'ssss a bucket!"
  elsif x == "bucket" and b_count <= 4
    b_count += 1
    puts "#{b_count} buckets"
    puts "Why are there so many buckets!!!"
  elsif x == "bucket" and b_count > 4
    puts "I lost count"
    puts "I'm done"
    break
  end
end

angry_manager("YOU\'RE NOT EVEN TRYING", 2)

sleep(1)
puts "\n¯\\_(ツ)_/¯"

angry_manager("FIND THEM OR YOU\"RE FIRED!",3)

contents.flatten!
found = contents.each do |x|
  break x if x == "manager's pack of cigarettes"
end


puts "\n\\\\\\\\   \n \\\\\\\\   \nヽ(´ー｀)ノ\n
You found a completely flattened #{found}"














