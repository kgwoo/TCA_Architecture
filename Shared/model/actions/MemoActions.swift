//
//  MemoActions.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation
import ComposableArchitecture

enum MemoActions:Equatable{
    case getMemoItem(_ id:String) //메모 하나 조회
    case getMemoItemResponse(Result<Memo, MemoApi.Failure>) // 메모 하나 조회 액션에 대한 응답
    case getMemoList // 모든 메모 조회
    case getMemoListResponse(Result<[Memo], MemoApi.Failure>) // 모든 메모 조회 액션에 대한 응답
}
