//
//  MemoStore.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation
import ComposableArchitecture

struct MemoState:Equatable{
    var memo:Memo? = nil
    var memoList:[Memo] = []
    var isLoading:Bool = false
}


