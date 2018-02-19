import Foundation

public protocol GenericId: CustomStringConvertible {
  var id: UUID {get}
}

extension GenericId {
  public var hashValue: Int {
    return id.hashValue
  }

  public var description: String {
    return id.uuidString
  }
}

public struct Id<T>: GenericId, Hashable, Comparable {
  public var id: UUID
  
  public init(id: UUID = UUID()) {
    self.id = id
  }

  public static func ==(lhs: Id, rhs: Id) -> Bool {
    return lhs.id == rhs.id
  }

  public static func <(lhs: Id, rhs: Id) -> Bool {
    return lhs.hashValue < rhs.hashValue
  }
}