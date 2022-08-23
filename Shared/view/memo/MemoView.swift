//
//  MemoView.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import SwiftUI
import ComposableArchitecture

struct MemoView: View {
    let store:Store<MemoState, MemoActions>
    
    var body: some View {
        WithViewStore(self.store){ viewStore in
            List{
                Section(header: VStack{
                    Button("메모 목록 가져오기", action:{
                        viewStore.send(.getMemoList)
                    })
                }) {
                    ForEach(viewStore.state.memoList){ memo in
                        LazyVStack{
                            Text(memo.title)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .overlay(
                ZStack{
                    if viewStore.state.isLoading {
                        Color.black.opacity(0.3)
                        ProgressView()
                    }
                }
            )
        }
    }
}
//
//struct MemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemoView()
//    }
//}
