//
//  Simple Calculator
//
//  Created by deathlezz on 28/04/2021.
//

print("* Welcome to Simple Calculator *")

func calculate() {

    print()
    print("Select operation: ")
    print("[1] Add / [2] Subtract / [3] Multiply / [4] Divide")

    let userChoice = Int(readLine()!)            //  Operation choice

    if userChoice == 1 || userChoice == 2 || userChoice == 3 || userChoice == 4 {
        
        func firstNumber() {
        
            print()
            print("Enter first number: ")

            if let num1 = Double(readLine()!) {          //  First number input
            
                func secondNumber() {
                
                    print()
                    print("Enter second number: ")

                    if let num2 = Double(readLine()!) {          //  Second number input

                        if userChoice == 1 {
                            print()
                            print("Solution: ", num1, "+", num2, "=", (num1 + num2))            //  Add formula
                            return calculate()

                        } else if userChoice == 2 {
                            print()
                            print("Solution: ", num1, "-", num2, "=", (num1 - num2))            //  Subtract formula
                            return calculate()
                            
                        } else if userChoice == 3 {
                            print()
                            print("Solution: ", num1, "x", num2, "=", (num1 * num2))            //  Multiply formula
                            return calculate()
                            
                        } else if userChoice == 4 {
                            
                            if num1 != 0 && num2 != 0 {     // restrict dividing by 0
                            
                                print()
                                print("Solution: ", num1, ":", num2, "=", (num1 / num2))            //  Divide formula
                                return calculate()
                                
                            } else if num1 == 0 {
                                print()
                                print("* Do not divide by 0 *")
                                return firstNumber()
                                
                            } else if num2 == 0 {
                                print()
                                print("* Do not divide by 0 *")
                                return secondNumber()
                            }
                        }

                    } else {
                        print()
                        print("* Enter numbers only *")
                        return secondNumber()
                    }
                }
                secondNumber()

            } else {
                print()
                print("* Enter numbers only *")
                return firstNumber()
            }
        }
        firstNumber()

    } else {
        print()
        print("* Enter number 1 - 4 *")
        return calculate()
    }
}
calculate()
