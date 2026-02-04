import Foundation

final class EstimateViewModel: ObservableObject {
    @Published var estimate: Estimate

    init(estimate: Estimate = EstimateViewModel.sample) {
        self.estimate = estimate
    }

    static var sample: Estimate {
        Estimate(
            customerName: "Solaris Renewables",
            jobReference: "LR-2841",
            route: RoutePlan(
                origin: "Phoenix, AZ",
                destination: "Barstow, CA",
                stops: [
                    RouteStop(address: "Flagstaff, AZ", contact: "Site Supervisor", serviceMinutes: 45, timeWindow: "08:00 - 10:00"),
                    RouteStop(address: "Kingman, AZ", contact: "Warehouse", serviceMinutes: 60, timeWindow: "12:00 - 14:00")
                ],
                totalDistanceMiles: 415
            ),
            constraints: VehicleConstraints(
                vehicleType: "Heavy Haul Trailer",
                capacityTons: 60,
                specialHandling: ["Oversize", "Escort Required"],
                driverHoursLimit: 11,
                renewableEnergyEquipment: ["Wind turbine blades", "Tower segments"]
            ),
            clearanceChecks: [
                ClearanceCheck(locationName: "I-40 Underpass", measuredHeightFeet: 15.2, postedHeightFeet: 15.0, capturedAt: Date())
            ],
            costInputs: CostInputs(
                laborHours: 14,
                laborRate: 62,
                fuelMiles: 415,
                fuelMpg: 6.5,
                fuelCostPerGallon: 4.25,
                tolls: 85,
                equipmentFees: 420,
                overheadPercent: 12,
                marginPercent: 8
            ),
            status: .draft,
            createdAt: Date()
        )
    }
}
