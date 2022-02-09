/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var somth: [Any] = [2.0, 5.4, 4, 3, "hi", "Bye", true, false]
print(somth)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for smth in somth {
    if let smth1 = smth as? Int {
        print("The integer has a value of \(smth1)")
    } else if let smth1 = smth as? Double {
        print("The double has a value of \(smth1)")
    } else if let smth1 = smth as? String {
        print("The string has a value of \(smth1)")
    } else if let smth1 = smth as? Bool {
        print("The boolean has a value of \(smth1)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dict: [String:Any] = ["double": 2.4,"int":2,"int2":3,"string":"Str","bool":true,"bool2":false,"string2":"14","string3":"14.4"]
for pair in dict {
    print(pair.key, pair.value)
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for smth in dict {
    if let smth1 = smth.value as? Int {
        total += Double(smth1)
    } else if let smth1 = smth.value as? Double {
        total += Double(smth1)
    } else if let smth1 = smth.value as? String {
        total += 1
    } else if let smth1 = smth.value as? Bool {
        if(smth1) {
            total += 2
        } else {
            total -= 3
        }
    }
}
print("total =",total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for smth in dict {
    if let smth1 = smth.value as? Int {
        total2 += Double(smth1)
    } else if let smth1 = smth.value as? Double {
        total2 += Double(smth1)
    } else if let smth1 = smth.value as? String {
        if let smth1_1 = Int(smth1) {
            total2 += Double(smth1_1)
        } else if let smth1_1 = Double(smth1) {
            total2 += smth1_1
        }
    }
}
print("total2 =",total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
