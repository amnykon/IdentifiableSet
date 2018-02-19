import Foundation

public protocol Identifiable {
  var id: Id<Self> { get }
}
