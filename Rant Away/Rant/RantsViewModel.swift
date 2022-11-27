//
//  RantsViewModel.swift
//  Rant Away
//
//  Created by Don Bouncy on 27/11/2022.
//

import Foundation

class RantsViewModel: ObservableObject{
    
    @Published var rants = [RantsModel]()
    @Published var title = ""
    @Published var rant = ""
    
    func fetchData() {
        if let url = URL(string: "http://localhost:3000/api/v1/rants"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode([RantsModel].self, from: safeData)
                            DispatchQueue.main.async {
                                self.rants = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    func postData() {
        guard let url = URL(string: "http://localhost:3000/api/v1/add-rant") else {return}
        
        var request = URLRequest(url: url)
        
        let body = ["title": title, "rant": rant]
        
        request.httpBody = try? JSONEncoder().encode(body)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, err in
            guard let data = data, err == nil else { return }
            
            do{
                let response = try JSONDecoder().decode(RantsModel.self, from: data)
                DispatchQueue.main.async {
                    self.rants.append(response)
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
        
        fetchData()
    }
}
