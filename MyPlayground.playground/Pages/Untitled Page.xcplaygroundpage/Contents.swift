import UIKit


func removeLeadingZero(_ string:String) -> String {
    return string.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
}

func removeUnderscore(_ string: String) -> String {
    return string.replacingOccurrences(of: "_", with: " ")
}

func extractNumber() -> String{
    let string = "My Wallet (SAR 1,685,633.00)"
    var result = ""
    for item in string {
        if item.isNumber || item == "." || item == ","{
            result.append(item)
        }
    }
    return result
}

print(extractNumber())
print(removeUnderscore("28_12_2024"))
print(removeLeadingZero("01 December 2022"))
