func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        if arc4random_uniform(2) == 0 {
            completion(.success(["Data 1", "Data 2"]))
        } else {
            completion(.failure(NSError(domain: "fetchData", code: 1, userInfo: nil)))
        }
    }
}