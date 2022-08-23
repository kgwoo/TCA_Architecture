//
//  memoReducer.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation
import ComposableArchitecture

struct MemoReducer{
    let reducer = Reducer<MemoState, MemoActions, MemoEnvironment>{ state, action, environment in
        switch action{
        case .getMemoItem(let id):
            enum FetchItemId{}
            state.isLoading = true
            return environment.memoApi.getMemoItem(id)
                .debounce(id: FetchItemId.self, for: 0.3, scheduler: environment.mainQueue)
                .catchToEffect(MemoActions.getMemoItemResponse)
            
        case .getMemoItemResponse(.success(let memo)):
            state.memo = memo
            state.isLoading = false
            return Effect.none
            
        case .getMemoItemResponse(.failure):
            state.isLoading = false
            return Effect.none
            
        case .getMemoList:
            enum FetchItemId{}
            state.isLoading = true
            
            return environment.memoApi.getMemoList()
                .debounce(id: FetchItemId.self, for: 0.3, scheduler: environment.mainQueue)
                .catchToEffect(MemoActions.getMemoListResponse)
            
        case .getMemoListResponse(.success(let memoList)):
            state.memoList = memoList
            state.isLoading = false
            return Effect.none
            
        case .getMemoListResponse(.failure(_)):
            state.isLoading = false
            return Effect.none
        }
    }
}
