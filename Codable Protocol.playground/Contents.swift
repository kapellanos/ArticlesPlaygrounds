//: Playground - noun: a place where people can play

import Foundation

struct BusStop: Codable
{
    let stopNumber: Int
    let stopName: String
    let isNightlineService: Bool
}

let busStopJSON = """
{
    "stopNumber": 7876321,
    "stopName": "Calle San Vicente, esquina con Santo Tomás",
    "isNightlineService": false
}
""".data(using: .utf8)!

let jsonDecoder = JSONDecoder()

let busStop = try? jsonDecoder.decode(BusStop.self, from: busStopJSON)
