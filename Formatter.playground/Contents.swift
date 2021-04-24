import UIKit

let weight = Measurement<UnitMass>(value: 900, unit: .grams)
let formatter = MeasurementFormatter()
formatter.string(from: weight)
formatter.unitOptions = [.providedUnit]

formatter.locale = Locale(identifier: "ru")
formatter.string(from: weight.converted(to: .kilograms))
formatter.string(from: weight)

if weight > Measurement<UnitMass>(value: 999, unit: .grams) {
    formatter.string(from: weight.converted(to: .kilograms))
} else {
    formatter.string(from: weight)
}


