//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var pie:Int = 22/7

var pieFloat:Float = 22/7

var pieDouble:Double = 22/7

// The int value does not hold decimal values. The float value does hold decimal values but is not as precise
//as the double.  That is why each variable is different in value though they are set by teh same expression

class Counter {
    var count = 0
    let maxCount = 10
    
    func increment() {
        if count + 1 <= maxCount
        {
            count += 1
        }
    }
    
    // parameter with argument label and parameter name
    func increment(by amount: Int) {
        if count + amount <= maxCount
        {
            count += amount
        }
    }
    
    func decrement(){
        
        count = count - 1
        
    }
    
    func decrement(by amount:Int){
        for i in 1...amount
        {
            decrement()
        }
        
    }
    
    func getCount() -> Int{
        
        return count
    }
    
    func reset() {
        count = 0
    }
    
    func display(){
        
        print("Count: \(count)")
    }
}

var myCounter = Counter()
myCounter.getCount()
myCounter.increment(by:10)
myCounter.getCount()
myCounter.increment()
myCounter.getCount()
myCounter.decrement()
myCounter.getCount()
myCounter.decrement(by:7)
myCounter.getCount()
myCounter.display()

func concatAll(words: [String], separator: String) -> String {
    var wordsCombined = ""
    
    for word in words {
        
        if words.last != word
        {
            wordsCombined = wordsCombined + word + separator
        }
        else
        {
            wordsCombined = wordsCombined + word
        }
    }
    
    return wordsCombined
    
}

var names = ["James", "Jane", "Tom", "Sally"]
print(concatAll(words:names, separator: ","))

