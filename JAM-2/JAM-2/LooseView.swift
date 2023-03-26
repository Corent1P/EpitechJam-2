//
//  LooseView.swift
//  JAM-2
//
//  Created by Killian Desserich on 25/03/2023.
//

import SwiftUI

struct LooseView: View {
    @State var home: Bool = false
    @EnvironmentObject var Infos:infos
    
    var body: some View {
        ZStack {
            Image("skieur")
                .resizable()
            Text("VOUS AVEZ PERDU !")
                .font(.title)
                .bold()
                .foregroundColor(Color("Color"))
                .position(x: 200, y: 350)
            VStack {
                Spacer()
                Button(action: {
                    Infos.nameplayerSolo = ""
                    Infos.scorePlayerSolo = 0
                    home = true
                }) {
                    Text("Rejouer")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 140, height: 50)
                        .background(Color(UIColor(red:69/255, green: 173/255, blue: 164/255, alpha:1.0)))
                        .cornerRadius(15.0)
                        .padding(20)
                }
            }
            NavigationLink("", destination:  HomeView(), isActive: $home)
        }.ignoresSafeArea()
        .navigationBarHidden(true)
    }
    
}

struct LooseView_Previews: PreviewProvider {
    static var previews: some View {
        LooseView()
    }
}
