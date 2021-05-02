import UIKit
//
//let weight = Measurement<UnitMass>(value: 19, unit: .grams)
//let formatter = MeasurementFormatter()
//formatter.string(from: weight)
//formatter.unitOptions = .naturalScale
//
//formatter.locale = Locale(identifier: "ru")
////formatter.string(from: weight.converted(to: .kilograms))
//formatter.string(from: weight)
//
//if weight > Measurement<UnitMass>(value: 999, unit: .grams) {
//    formatter.string(from: weight.converted(to: .kilograms))
//} else {
//    formatter.string(from: weight)
//}
//
//
//
//let number = 1234.5678 // 🤔
//
//let formatter2 = NumberFormatter()
//formatter2.numberStyle = .currency
//
//let 🇺🇸 = Locale(identifier: "en_US")
//formatter2.locale = 🇺🇸
//formatter2.string(for: number) // $1,234.57
//
//let 🇯🇵 = Locale(identifier: "ja_JP")
//formatter2.locale = 🇯🇵
//formatter2.string(for: number) // ￥ 1,235 😵
//
//
//let weight2 = Measurement(value: 10, unit: UnitMass.kilograms)
//let weightInGrams = Measurement(value: 1200, unit: UnitMass.grams)
//print(weight2 + weightInGrams)

//
//let formatter = MeasurementFormatter()
//formatter.locale = Locale(identifier: "ru")
//
//let  distanceMeters = Measurement(value: 2, unit: UnitLength.meters)
//formatter.string(from: distanceMeters)
//formatter.string(from: UnitLength.meters)
//formatter.unitOptions = .naturalScale
//formatter.string(from: distanceMeters)


//let formatter = MeasurementFormatter()
//formatter.locale = Locale(identifier: "ru")
//
//let weight = Measurement(value: 21, unit: UnitMass.grams)
//formatter.string(from: weight)
//
//
//formatter.unitOptions = .naturalScale
//formatter.string(from: UnitMass.grams)
//
//formatter.string(from: weight)


let formatter = MeasurementFormatter()
formatter.unitStyle = .medium
formatter.unitOptions = .providedUnit

let temp = Measurement(value: 23, unit: UnitTemperature.celsius)

let temp2 = formatter.string(from: temp)

