//
//  MarketDataModel.swift
//  SwiftfullCrypto
//
//  Created by muslim on 02.05.2022.
//

import Foundation

/*
 URL =  https://api.coingecko.com/api/v3/global
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 13393,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 798,
 "total_market_cap": {
 "btc": 47414156.79638079,
 "eth": 641709615.4920655,
 "ltc": 18149149545.93818,
 "bch": 6433634976.431353,
 "bnb": 4710985533.142254,
 "eos": 878609834873.4507,
 "xrp": 2991241774680.557,
 "xlm": 10597340239841.963,
 "link": 163731598090.24094,
 "dot": 122217098189.78122,
 "yfi": 106318207.88167633,
 "usd": 1823044523932.9773,
 "aed": 6696042536405.832,
 "ars": 210983677321549.44,
 "aud": 2585611286982.4766,
 "bdt": 158106526131106.72,
 "bhd": 687318777279.6401,
 "bmd": 1823044523932.9773,
 "brl": 9271275230913.545,
 "cad": 2348522523600.469,
 "chf": 1782237495309.2607,
 "clp": 1568365203939540.5,
 "cny": 12047042823053.904,
 "czk": 42841546312425.016,
 "dkk": 12907649274511.488,
 "eur": 1735168308745.8357,
 "gbp": 1459770087737.9038,
 "hkd": 14307344576052.232,
 "huf": 663181558400093.9,
 "idr": 26482400987618090,
 "ils": 6119604973160.856,
 "inr": 139503406838016.64,
 "jpy": 237326670692381.06,
 "krw": 2310956581922315,
 "kwd": 559049364575.7134,
 "lkr": 646160026852879.2,
 "mmk": 3376938546285103.5,
 "mxn": 37327368956528.734,
 "myr": 7936624334942.201,
 "ngn": 756909855891733.6,
 "nok": 17213186394975.168,
 "nzd": 2834775897291.018,
 "php": 95691603415153.2,
 "pkr": 338539368094353.94,
 "pln": 8147840450440.597,
 "rub": 130210971529313.88,
 "sar": 6837707680271.599,
 "sek": 18069430300886.96,
 "sgd": 2527915573889.0464,
 "thb": 62847449144479.67,
 "try": 27149872877124.29,
 "twd": 53849089147932.2,
 "uah": 53620233253620.53,
 "vef": 182541448181.40933,
 "vnd": 41875332714740536,
 "zar": 29334509167156.76,
 "xdr": 1331354831472.063,
 "xag": 80489402850.17223,
 "xau": 978810835.3448551,
 "bits": 47414156796380.79,
 "sats": 4741415679638079
 },
 "total_volume": {
 "btc": 2602350.459832849,
 "eth": 35220563.34622844,
 "ltc": 996125437.1616824,
 "bch": 353113375.2143584,
 "bnb": 258564871.6919594,
 "eos": 48222954119.28779,
 "xrp": 164175848180.54517,
 "xlm": 581640486924.4235,
 "link": 8986493241.01931,
 "dot": 6707948493.937809,
 "yfi": 5835329.696100472,
 "usd": 100058739323.92433,
 "aed": 367515749536.7744,
 "ars": 11579947990066.754,
 "aud": 141912609571.94675,
 "bdt": 8677758264199.83,
 "bhd": 37723845723.68803,
 "bmd": 100058739323.92433,
 "brl": 508858724705.7493,
 "cad": 128899870464.13109,
 "chf": 97819024502.89757,
 "clp": 86080533440372.11,
 "cny": 661208161200.357,
 "czk": 2351380374112.2246,
 "dkk": 708442990331.7424,
 "eur": 95235607912.2932,
 "gbp": 80120234456.32475,
 "hkd": 785265989151.1261,
 "huf": 36399062011514.79,
 "idr": 1453500242207541.5,
 "ils": 335877676456.2468,
 "inr": 7656716463233.042,
 "jpy": 13025796773297.467,
 "krw": 126838044372400.16,
 "kwd": 30683712824.856575,
 "lkr": 35464826470024.9,
 "mmk": 185345014496242.47,
 "mxn": 2048731904809.2354,
 "myr": 435605721646.70374,
 "ngn": 41543387979900.19,
 "nok": 944754616696.4934,
 "nzd": 155588137769.0442,
 "php": 5252083026995.324,
 "pkr": 18580907892452.754,
 "pln": 447198427126.0368,
 "rub": 7146696356739.964,
 "sar": 375291114052.157,
 "sek": 991750005264.6754,
 "sgd": 138745950589.82324,
 "thb": 3449414673402.827,
 "try": 1490134781255.4773,
 "twd": 2955535042150.0728,
 "uah": 2942974168309.0576,
 "vef": 10018881568.50456,
 "vnd": 2298349242270544.5,
 "zar": 1610039671230.606,
 "xdr": 73072096858.34741,
 "xag": 4417702405.177134,
 "xau": 53722537.73040823,
 "bits": 2602350459832.849,
 "sats": 260235045983284.9
 },
 "market_cap_percentage": {
 "btc": 40.133266698634,
 "eth": 18.810950845519095,
 "usdt": 4.562623879795463,
 "bnb": 3.5695111338380423,
 "usdc": 2.6914190778268057,
 "xrp": 1.6071803313358453,
 "sol": 1.5964248978129563,
 "luna": 1.5746327347157503,
 "ada": 1.3692988625119453,
 "ust": 1.0215307404986886
 },
 "market_cap_change_percentage_24h_usd": 1.0314237814721925,
 "updated_at": 1651524448
 }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct  MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double?
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage?.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return  ""
    }
}
