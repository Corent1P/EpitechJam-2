//
//  rule2players.swift
//  JAM-2
//
//  Created by Charlotte Menet on 25/03/2023.
//

import SwiftUI

struct rule2players: View {
    
    @State var enterGame: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                title_2()
                para_rule_2()
                
                Button {
                    enterGame = true
                } label: {
                    Text("Enter Game")
                        .padding()
                        .font(.system(size: 30))
                        .shadow(radius: 6, x: -1, y: 1)
                        .frame(width: 320, height: 68)
                        .background(Color("Color_Button"))
                        .foregroundColor(.white)
                        .bold()
                }

                .padding()
                .shadow(radius: 6, x: -3, y: 3)
            }
            NavigationLink("", destination:  MultiGameView(), isActive: $enterGame)
                    

            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct title_2: View {
    var body: some View {
        Text("Rule of the Game")
            .opacity(0.5)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.top, -150)
    }
}

struct para_rule_2: View {
    var body: some View {
        VStack {
            Text("The game is simple, the players who press the most buttons until the end of the timer win.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, -100)
                
            
            Text("You have 60 seconds to fight against each other.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Player 1 is Black Button.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .bold()
            
            Text("Player 2 is Gray Button.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .bold()
            
            Text("GOOD LUCK !!")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            
    
    
    
        }
    }
    
}


struct rule2players_Previews: PreviewProvider {
    static var previews: some View {
        rule2players()
    }
}
