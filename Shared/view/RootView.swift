//
//  RootView.swift
//  TCA_Architecture
//
//  Created by gunoo on 2022/08/22.
//

import SwiftUI
import ComposableArchitecture

struct RootView: View {
    let memoStore = Store(
        initialState: MemoState(),
        reducer: MemoReducer().reducer,
        environment: MemoEnvironment(memoApi: MemoApi.live, mainQueue: .main))
    
    var body: some View {
        MemoView(store: memoStore)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
