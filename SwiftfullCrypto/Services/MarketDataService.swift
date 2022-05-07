//
//  MarketDataService.swift
//  SwiftfullCrypto
//
//  Created by muslim on 03.05.2022.
//

import Foundation
import Combine


class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [unowned self] (returnedGlobalData) in
                self.marketData = returnedGlobalData.data
                self.marketDataSubscription?.cancel()
            })
    }
}
