import Foundation

public struct Model: Decodable {
  
  public var title: String
  public var images: [URL]
  
  private enum CodingKeys: String, CodingKey {
    case title
    case images
  }
  
}

public extension Model {
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    title = try container.decode(String.self, forKey: .title)
    images = try container.decode([URL].self, forKey: .images)
  }
  
}

extension Model: Equatable {
  
  public static func ==(lhs: Model, rhs: Model) -> Bool {
    return lhs.title == rhs.title
  }
  
}

public struct List: Decodable {
  public var items: [Model]
  
  private enum CodingKeys: String, CodingKey {
    case items = "list"
  }
  
}

public extension List {
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    items = try container.decode([Model].self, forKey: .items)
  }
  
}
