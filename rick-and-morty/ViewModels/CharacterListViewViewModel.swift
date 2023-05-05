import Foundation

struct CharacterListViewViewModel {
    
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: \(model.info.pages)")
                print("Page result count: \(model.results.count)")
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
