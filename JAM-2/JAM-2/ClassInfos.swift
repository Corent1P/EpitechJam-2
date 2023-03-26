//
//  ClassInfos.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import Foundation

class infos: ObservableObject {
    @Published var namePlayer1 = ""
    @Published var namePlayer2 = ""
    @Published var nameplayerSolo = ""
    @Published var scorePlayer1 = 0
    @Published var scorePlayer2 = 0
    @Published var scorePlayerSolo = 0
}
