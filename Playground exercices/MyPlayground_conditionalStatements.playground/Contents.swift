import UIKit
import Darwin

func loveCalculator(){
    let loveValue = Int.random(in: 0...100)
    
    switch loveValue{
        
    case 80...100:
        print("you love each other")

    case 40...79:
        print("You will together")
        
    case 0...39:
        print("You will be forever alone")
        
    default:
        print("error")
    }
}
loveCalculator()
