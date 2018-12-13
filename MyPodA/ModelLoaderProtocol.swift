import Foundation

public protocol ModelLoaderProtocol {
  
  func getModelList(completion: ([Model]) -> Void)
  
}
