
import Foundation

class PhotosStore: Store {

  // MARK: - Result Parsing

  func parsePhotos(value: Data) -> PhotosModel? {
    do {
        let photo = try JSONDecoder().decode(PhotosModel.self, from: value)
        print(photo)
        return photo
      } catch {
        print(error)
      }
    return nil
  }
 
}
