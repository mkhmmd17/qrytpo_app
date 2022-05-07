//
//  CoinImageViewModel.swift
//  SwiftfullCrypto
//
//  Created by muslim on 23.04.2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    private var cancellabels = Set<AnyCancellable>()
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        dataService.$image.sink { [unowned self] _ in
            self.isLoading = false
        } receiveValue: { [unowned self] returnedImage in
            self.image = returnedImage
        }
        .store(in: &cancellabels)

    }
    
}
