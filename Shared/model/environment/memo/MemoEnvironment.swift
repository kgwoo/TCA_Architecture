//
//  MemoEnvironment.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation
import CombineSchedulers

//환경설정 주입
struct MemoEnvironment{
    var memoApi:MemoApi
    var mainQueue: AnySchedulerOf<DispatchQueue>
}
