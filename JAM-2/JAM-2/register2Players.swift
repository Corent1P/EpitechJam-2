//
//  register2Players.swift
//  JAM-2
//
//  Created by Athéna Mojzes on 25/03/2023.
//

import SwiftUI

struct register2Players: View {
    
    @State var pseudo: String = ""
    @State var pseudo2: String = ""
    @State var rules: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                userImage2()
                type_name2()
                pseudoName2(pseudo: $pseudo)
                    .padding()

                type_name3()
                
                pseudoName3(pseudo: $pseudo2)
                
                Button {
                    if (!pseudo.isEmpty && !pseudo2.isEmpty) {
                        rules = true
                    }
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
            NavigationLink("", destination:  rule2players(), isActive: $rules)
        }
    }
}
    
    struct register2Players_Previews: PreviewProvider {
        static var previews: some View {
            register2Players()
        }
    }
    
    struct type_name2: View {
        var body: some View {
            Text("Player 1")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                .opacity(0.4)
        }
    }

    struct type_name3: View {
        var body: some View {
            Text("Player 2")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                .opacity(0.4)
        }
    }
    
    struct userImage2: View {
        var body: some View {
            Image("illusion optique")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
    

struct pseudoName2: View {
    
    @Binding var pseudo:String
    
    var body: some View {
        TextField("Pseudo", text: $pseudo)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            .frame(width: 280)
    }
}

struct pseudoName3: View {
    
    @Binding var pseudo:String
    
    var body: some View {
        TextField("Pseudo", text: $pseudo)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            .frame(width: 280)
    }
}

