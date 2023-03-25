//
//  Choose_Game.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import SwiftUI

struct Choose_Game: View {
    @State private var selection = false
    @State private var selection2 = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("Logo-1")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(.top, -20)
                    Text("Please choose a game:")
                        .font(.largeTitle)
                        .bold()
                        .opacity(0.4)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    Button {
                        selection = true
                    } label: {
                        Text("Solo Game")
                            .padding()
                            .font(.system(size: 30))
                            .shadow(radius: 6, x: -1, y: 1)
                            .frame(width: 320, height: 68)
                            .background(Color("Color_Button"))
                            .foregroundColor(.white)
                            .bold()
                    }
                    .cornerRadius(16)
                    .shadow(radius: 6, x: -3, y: 3)
                    .padding(.bottom, 40)
                    Button {
                        selection2 = true
                    } label: {
                        Text("Duo Game")
                            .padding()
                            .font(.system(size: 30))
                            .shadow(radius: 6, x: -1, y: 1)
                            .frame(width: 320, height: 68)
                            .background(Color("Color_Button"))
                            .foregroundColor(.white)
                            .bold()
                    }
                    .cornerRadius(16)
                    .shadow(radius: 6, x: -3, y: 3)
                    NavigationLink("", destination:  register(), isActive: $selection)
                    
                    NavigationLink("", destination:  register2Players(), isActive: $selection2)
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Choose_Game_Previews: PreviewProvider {
    static var previews: some View {
        Choose_Game()
    }
}
