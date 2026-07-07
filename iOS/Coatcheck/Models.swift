import Foundation

struct Fee: Identifiable, Codable, Equatable {
    let id: UUID
    var venue: String
    var feeType: String
    var amount: Double
    var date: Date
    var createdAt: Date

    init(id: UUID = UUID(), venue: String = "", feeType: String = "", amount: Double = 0, date: Date = Date(), createdAt: Date = Date()) {
        self.id = id
        self.venue = venue
        self.feeType = feeType
        self.amount = amount
        self.date = date
        self.createdAt = createdAt
    }
}
