import UIKit

/**
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 */


func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    var mapper: [Character: Character] = ["(":")", "{":"}", "[":"]"]
    
    for char in s {
        if (char == "(" || char == "{" || char == "[") {
            stack.append(mapper[char]!)
        } else {
            if (!stack.isEmpty) {
                var top: Character = stack.popLast()!
                if (top != char) {
                    return false
                }
            } else {
                return false
            }
        }
    }
    
    return stack.isEmpty ? true : false
}


//print(isValid("()[]{}"))
//print(isValid("(]"))
//print(isValid("]["))
print(isValid("]"))
