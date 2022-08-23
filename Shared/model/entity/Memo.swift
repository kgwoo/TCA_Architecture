//
//  Memo.swift
//  TCA_Architecture (iOS)
//
//  Created by gunoo on 2022/08/23.
//

import Foundation

//Identifiable : 프로퍼티에 'id' 정의를 강제화 한다.
struct Memo:Codable, Equatable, Identifiable{
    let createdAt, name, avatar, title, contents, id: String
}
