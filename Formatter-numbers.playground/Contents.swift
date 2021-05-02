import UIKit

struct Price: Codable {
    var amount: Double
    var currency: Currency
}

enum Currency: String, Codable {
    case eur
    case usd
    case rub
}


extension Price: CustomStringConvertible {
    var description: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currency.rawValue
        formatter.maximumFractionDigits = 2
        
        let number = NSNumber(value: amount)
        return formatter.string(from: number)!
    }
}

var itemPrice = Price(amount: 293, currency: .rub)


