//
//  LooseView.swift
//  JAM-2
//
//  Created by Killian Desserich on 25/03/2023.
//

import SwiftUI

struct LooseView: View {
    var body: some View {
        ZStack {
            Image("skieur")
                .resizable()
            Text("VOUS AVEZ PERDU !")
                .font(.title)
                .bold()
                .foregroundColor(Color("Color"))
                .position(x: 200, y: 350)
        }.ignoresSafeArea()
    }
}

struct LooseView_Previews: PreviewProvider {
    static var previews: some View {
        LooseView()
    }
}
