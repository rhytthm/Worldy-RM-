import CoreLocation

// MARK: - Location

/// A Location
struct Location {
    
    /// The name
    let name: String
    
    /// The coordinate
    let coordinate: CLLocationCoordinate2D
    
}

// MARK: - Equatable

extension Location: Equatable {
    
    /// Returns a Boolean value indicating whether two values are equal
    /// - Parameters:
    ///   - lhs: A value to compare
    ///   - rhs: Another value to compare
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.name == rhs.name
            && lhs.coordinate.latitude == rhs.coordinate.latitude
            && lhs.coordinate.longitude == rhs.coordinate.longitude
    }
    
}

// MARK: - Hashable

extension Location: Hashable {
    
    /// Hashes the essential components of this value by feeding them into the given hasher
    /// - Parameter hasher: The hasher to use when combining the components of this instance
    func hash(
        into hasher: inout Hasher
    ) {
        hasher.combine(self.name)
        hasher.combine(self.coordinate.latitude)
        hasher.combine(self.coordinate.longitude)
    }
    
}

// MARK: - Apple Park

extension Location {
    
    /// Apple Park Location
    static let applePark = Self(
        name: "Apple Park",
        coordinate: .init(
            latitude: 37.3348,
            longitude: -122.0090
        )
    )
    
}

// MARK: - All

extension Location {
    
    /// All locations
    static let all: [Self] = [
        .applePark,
        .init(
            name: "Colosseum",
            coordinate: .init(
                latitude: 41.890251,
                longitude: 12.492373
            )
        ),
        .init(
            name: "Coit Tower",
            coordinate: .init(
                latitude: 37.8024,
                longitude: -122.4058
            )
        ),
        .init(
            name: "Eiffel Tower",
            coordinate: .init(
                latitude: 48.858093,
                longitude: 2.294694
            )
        ),
        .init(
            name: "Statue of Liberty",
            coordinate: .init(
                latitude: 40.689247,
                longitude: -74.044502
            )
        ),
        .init(
            name: "Taj Mahal",
            coordinate: .init(
                latitude: 27.173891,
                longitude: 78.042068
            )
        ),
        .init(
            name: "Big Ben",
            coordinate: .init(
                latitude: 51.4994,
                longitude: -0.1245
            )
        )
    ]
    
}
