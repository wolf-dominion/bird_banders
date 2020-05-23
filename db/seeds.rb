user_01 = User.create(name: "Christine", username: "Kulapti", password: "password1", email: "CG@mail.com")
user_02 = User.create(name: "Hannah", username: "Owl_Watcher", password: "password2", email: "HD@mail.com")
user_03 = User.create(name: "Bob", username: "Old_guy", password: "password3", email: "BJ@mail.com")

research_group_01 = ResearchGroup.create(name: "UNT graduate research")
research_group_02 = ResearchGroup.create(name: "Colorado Birders")

membership_01 = Membership.create(user: user_01, research_group: research_group_01)
membership_02 = Membership.create(user: user_02, research_group: research_group_02)
membership_03 = Membership.create(user: user_03, research_group: research_group_01)
membership_03 = Membership.create(user: user_03, research_group: research_group_02)

bird_01 = Bird.create(bandId: "1QX4", species: "Painted Bunting")
bird_02 = Bird.create(bandId: "GH56", species: "Painted Bunting")
bird_03 = Bird.create(bandId: "LUP9", species: "Painted Bunting")
bird_04 = Bird.create(bandId: "876H", species: "Black Bird")
bird_05 = Bird.create(bandId: "PLS9", species: "Black Bird")

capture_01 = Capture.create(gender: "F", age: "8", location: "Dallas, Tx")
capture_02 = Capture.create(gender: "F", age: "9", location: "Dallas, Tx")
capture_03 = Capture.create(gender: "F", age: "10", location: "Dallas, Tx")

capture_04 = Capture.create(gender: "M", age: "2", location: "Dallas, Tx")
capture_05 = Capture.create(gender: "M", age: "2", location: "Garland, Tx")
capture_06 = Capture.create(gender: "M", age: "3", location: "Irvine, Tx")

capture_07 = Capture.create(gender: "F", age: "3", location: "Garland, Tx")
capture_08 = Capture.create(gender: "F", age: "4", location: "Garland, Tx")
capture_09 = Capture.create(gender: "F", age: "4", location: "Dallas, Tx")

capture_10 = Capture.create(gender: "F", age: "1", location: "Boulder, Co")
capture_11 = Capture.create(gender: "F", age: "2", location: "Denver, Co")
capture_12 = Capture.create(gender: "F", age: "3", location: "Boulder, Co")

capture_13 = Capture.create(gender: "M", age: "8", location: "Boulder, Co")
capture_14 = Capture.create(gender: "M", age: "8", location: "Denver, Co")
capture_15 = Capture.create(gender: "M", age: "8", location: "Grand Junction, Co")

bird_capture_01 = BirdCapture.create(user: user_01, bird: bird_01, capture: capture_01)
bird_capture_02 = BirdCapture.create(user: user_03, bird: bird_01, capture: capture_02)
bird_capture_03 = BirdCapture.create(user: user_01, bird: bird_01, capture: capture_03)

bird_capture_04 = BirdCapture.create(user: user_01, bird: bird_02, capture: capture_04)
bird_capture_05 = BirdCapture.create(user: user_01, bird: bird_02, capture: capture_05)
bird_capture_06 = BirdCapture.create(user: user_03, bird: bird_02, capture: capture_06)

bird_capture_07 = BirdCapture.create(user: user_03, bird: bird_03, capture: capture_07)
bird_capture_08 = BirdCapture.create(user: user_01, bird: bird_03, capture: capture_08)
bird_capture_09 = BirdCapture.create(user: user_01, bird: bird_03, capture: capture_09)

bird_capture_10 = BirdCapture.create(user: user_02, bird: bird_04, capture: capture_10)
bird_capture_11 = BirdCapture.create(user: user_02, bird: bird_04, capture: capture_11)
bird_capture_12 = BirdCapture.create(user: user_03, bird: bird_04, capture: capture_12)

bird_capture_13 = BirdCapture.create(user: user_03, bird: bird_05, capture: capture_13)
bird_capture_14 = BirdCapture.create(user: user_02, bird: bird_05, capture: capture_14)
bird_capture_15 = BirdCapture.create(user: user_02, bird: bird_05, capture: capture_15)