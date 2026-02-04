import Foundation

struct Estimate: Identifiable {
    let id = UUID()
    var customerName: String
    var jobReference: String
    var route: RoutePlan
    var constraints: VehicleConstraints
    var clearanceChecks: [ClearanceCheck]
    var costInputs: CostInputs
    var status: EstimateStatus
    var createdAt: Date
}

struct RoutePlan {
    var origin: String
    var destination: String
    var stops: [RouteStop]
    var totalDistanceMiles: Double
}

struct RouteStop: Identifiable {
    let id = UUID()
    var address: String
    var contact: String
    var serviceMinutes: Int
    var timeWindow: String
}

struct VehicleConstraints {
    var vehicleType: String
    var capacityTons: Double
    var specialHandling: [String]
    var driverHoursLimit: Int
    var renewableEnergyEquipment: [String]
}

struct ClearanceCheck: Identifiable {
    let id = UUID()
    var locationName: String
    var measuredHeightFeet: Double
    var postedHeightFeet: Double?
    var capturedAt: Date
}

struct CostInputs {
    var laborHours: Double
    var laborRate: Double
    var fuelMiles: Double
    var fuelMpg: Double
    var fuelCostPerGallon: Double
    var tolls: Double
    var equipmentFees: Double
    var overheadPercent: Double
    var marginPercent: Double
}

enum EstimateStatus: String, CaseIterable {
    case draft = "Draft"
    case submitted = "Submitted"
    case approved = "Approved"
    case rejected = "Rejected"
}
