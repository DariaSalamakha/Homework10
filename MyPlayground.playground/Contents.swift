struct User {
    var name: String
    var stepsToday: Int?
    
    init(name: String){
        self.name = name
    }
    
    init?(name: String, stepsToday: Int){
        if stepsToday == 0 {
            return nil
        } else {
            self.name = name
            self.stepsToday = stepsToday
        }
    }
}

let user1 = User(name: "Vasyl", stepsToday: 8976)
let user2 = User(name: "Ivan", stepsToday: 0)
let user3 = User(name: "Karina", stepsToday: 10987)

let arrUsers = [user1, user2, user3]

func mostSteps(arrayOfUsers: Array<User?>) -> Int {
    
    var topCompetitor: User?
    
    for user in arrayOfUsers {
       
        guard topCompetitor != nil else { topCompetitor = user; continue }
        
        if let stepsCompetitor = topCompetitor?.stepsToday {
            if let stepsUser = user?.stepsToday {
                if stepsCompetitor < stepsUser {
                topCompetitor = user
                }
            }
        }
    }
    
    if let steps = topCompetitor?.stepsToday {
        return steps
    } else {
        return 0
    }
}
    

let topSteps = mostSteps(arrayOfUsers: arrUsers)

print(topSteps)

//
enum Suit{
    case Diamonds
    case Hearts
    case Clubs
    case Spades
}

func getFortune(cardSuit: Suit) {
    
    switch cardSuit {
    case .Clubs:
        print("Noting is impossible!")
    case .Diamonds:
        print("Learning is everywhere!")
    case .Hearts:
        print("Bealive in yourself.")
    case .Spades:
        print("Dream as if you will live forever.")
    }
    
}

getFortune(cardSuit: .Diamonds)
getFortune(cardSuit: .Clubs)
getFortune(cardSuit: .Hearts)
