import Foundation

public struct IdentifiableSet<T: Identifiable> {
  private var set: [Id<T>: T] = [:]

  public subscript(_ id: Id<T>) -> T? {
    get {
      return set[id]
    }
    set {
      set[id] = newValue
    }
  }

  public var values: [T] {
    return Array(set.values)
  }

  public var keys: [Id<T>] {
    return Array(set.keys)
  }

  public init(_ items: [T] = []) {
    for item in items {
      self[item.id] = item
    }
  }
}
