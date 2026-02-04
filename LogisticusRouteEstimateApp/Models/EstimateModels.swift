import Foundation

struct Estimate: Identifiable {
    let id: UUID
    var customerName: String
    var jobReference: String
    var estimateType: EstimateType
    var createdAt: Date
    var status: EstimateStatus
    var route: Route
    var costInputs: CostInputs
    var clearanceChecks: [ClearanceCheck]
    var notes: String
}

enum EstimateType: String, CaseIterable, Identifiable {
    case oneTime = "One-Time"
    case recurring = "Recurring"

    var id: String { rawValue }
}

enum EstimateStatus: String, CaseIterable, Identifiable {
    case draft = "Draft"
    case submitted = "Submitted"
    case approved = "Approved"
    case rejected = "Rejected"

    var id: String { rawValue }
}

struct Route {
    var origin: Stop
    var destination: Stop
    var stops: [Stop]
    var distanceMiles: Double
    var knownClearanceFeet: Double?
}

struct Stop: Identifiable {
    let id: UUID
    var name: String
    var address: String
    var serviceMinutes: Int
    var timeWindow: String
}

struct CostInputs {
    var laborHours: Double
    var laborRate: Double
    var fuelDistanceMiles: Double
    var fuelMpg: Double
    var fuelPricePerGallon: Double
    var tolls: Double
    var equipmentFees: Double
    var overheadRate: Double

    var totalFuelCost: Double {
        guard fuelMpg > 0 else { return 0 }
        return (fuelDistanceMiles / fuelMpg) * fuelPricePerGallon
    }

    var totalLaborCost: Double {
        laborHours * laborRate
    }

    var totalCost: Double {
        totalLaborCost + totalFuelCost + tolls + equipmentFees + overheadRate
    }
}

struct ClearanceCheck: Identifiable {
    let id: UUID
    var locationName: String
    var measuredHeightFeet: Double
    var manualOverrideFeet: Double?
    var capturedAt: Date
    var notes: String
}
