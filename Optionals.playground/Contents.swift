import UIKit

let inputUserAge = "34e"
let userAge = Int(inputUserAge)
//returns nil because inputUserAge contains integer and letter e

if userAge != nil {
    print(userAge!)
}

func checkAge() {
    if userAge != nil {
        if userAge! >= 18 {
            print("Welcome!")
        } else {
            print("Sorry, but you aren't old enough to use our app.")
        }
    } else {
        print("Sorry, something went wrong. Can you please re-enter your age?")
    }
   
}

checkAge()

var heartRate: Int? = 74

print(heartRate!)

let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79
let oldHR4 = 70

if heartRate != nil {
    let hrAverage = (heartRate! + oldHR1 + oldHR2 + oldHR3 + oldHR4) / 5
    print(hrAverage)
} else {
    let hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4) / 4
    print(hrAverage)
}

var prices = ["Chips": 2.99, "Donuts": 1.89, "Juice": 3.99, "Apple": 0.50, "Banana": 0.25, "Broccoli": 0.99]
var stock = ["Chips": 4, "Donuts": 0, "Juice": 12, "Apple": 6, "Banana": 6, "Broccoli": 3]

func priceCheck(item: String) -> Double? {
    if let available = stock[item] {
        if available == 0 {
            return nil
        } else {
            return prices[item]
        }
    } else {
        return nil
    }
}

priceCheck(item: "Donuts")
print(priceCheck(item: "Apple")!)

struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Breakfast": Meal(food: ["Bagel", "Orange Juice", "Egg Whites"], calories: 530)]

func mealSet(item: String) -> Meal? {
    if let set = meals[item] {
        return set
    } else {
        return nil
    }
}

print(mealSet(item: "Breakfast")!)

//var mealLog: [String: Any]

func checkMealLog() -> [String: Any]{
    if let meal = UserDefaults.standard.dictionary(forKey: "mealLog") {
        return meal
    } else {
        return [:]
    }
}

print(checkMealLog())

struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram == 0 || yearManufactured < 1970 || yearManufactured > 2020 {
            return nil
        } else {
            self.ram = ram
            self.yearManufactured = yearManufactured
        }
    }
}

let firstComputer = Computer(ram: 8, yearManufactured: 2019)
let secondComputer = Computer(ram: 8, yearManufactured: 1969)

if let myComputer = secondComputer {
    print("This computer with \(myComputer.ram)gb RAM was manufactured \(myComputer.yearManufactured)")
} else {
    print("Not included")
}

struct WorkoutTime {
    var startTime: Double
    var endTime: Double
    
    init?(startTime: Double, endTime: Double) {
        if endTime - startTime <= 10 {
            return nil
        } else {
            self.startTime = startTime
            self.endTime = endTime
        }
    }
}

let firstWorkout = WorkoutTime(startTime: 36000, endTime: 41400)
let secondWorkout = WorkoutTime(startTime: 36000, endTime: 36005)
