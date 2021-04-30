//
//  Simple Calculator
//
//  Created by deathlezz on 28/04/2021.
//

print("* Welcome to Simple Calculator *")

while true {

    print()
    print("Select operation: ")
    print("[1] Add / [2] Subtract / [3] Multiply / [4] Divide")

    let userChoice = Int(readLine()!)            //  Operation input

    if userChoice == 1 || userChoice == 2 || userChoice == 3 || userChoice == 4 {
        
        print()
        print("Enter first number: ")

        if let num1 = Float(readLine()!) {          //  First number input
        
            print()
            print("Enter second number: ")

            if let num2 = Float(readLine()!) {          //  Second number input

                if userChoice == 1 {
                    print()
                    print("Solution: ", num1, "+", num2, "=", (num1 + num2))            //  Add formula

                } else if userChoice == 2 {
                    print()
                    print("Solution: ", num1, "-", num2, "=", (num1 - num2))            //  Subtract formula
                    
                } else if userChoice == 3 {
                    print()
                    print("Solution: ", num1, "x", num2, "=", (num1 * num2))            //  Multiply formula
                    
                } else if userChoice == 4 {
                    print()
                    print("Solution: ", num1, ":", num2, "=", (num1 / num2))            //  Divide formula
                    
                }

            } else {
                print()
                print("* Enter numbers only *")

            }

        } else {
            print()
            print("* Enter numbers only *")
            
        }

    } else {
        print()
        print("* Enter number 1 - 4 *")
        
    }

}
