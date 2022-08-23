//
//  memoApi.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation
import ComposableArchitecture

struct MemoApi{
    var getMemoItem:(_ id:String) -> Effect<Memo, Failure>
    var getMemoList:() -> Effect<[Memo], Failure>
    
    
    struct Failure:Error, Equatable{}
}

extension MemoApi{
    static let live = Self(
        getMemoItem: { id in
            Effect.task {
                let (data, _) = try await URLSession.shared.data(from: URL(string:"https://63045983761a3bce77e63eb7.mockapi.io/memo/\(id)")!)
                
                return try JSONDecoder().decode(Memo.self, from: data)
            }
            .mapError{_ in Failure()}
            .eraseToEffect()
        },
        getMemoList: {
            Effect.task {
                let (data, _) = try await URLSession.shared.data(from: URL(string:"https://63045983761a3bce77e63eb7.mockapi.io/memo")!)
                
                return try JSONDecoder().decode([Memo].self, from: data)
            }
            .mapError{_ in Failure()}
            .eraseToEffect()
        }
    )
}
