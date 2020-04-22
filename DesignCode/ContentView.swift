//
//  ContentView.swift
//  DesignCode
//
//  Created by Wood Chen on 2020/4/18.
//  Copyright © 2020 Wood Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var viewState = CGSize.zero
    var body: some View {
        ZStack{
            
            TitleView()
                .blur(radius: show ? 20:0)
                .animation(.default)
            
            CardBottomView()
                .blur(radius: show ? 20:0)
                .animation(.default)
            CardView()
                .background(show ? Color.red:Color("background8"))
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x:0,y:show ? -400:-40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15:0))
                //.rotation3DEffect(Angle(degrees:50), axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
                .animation(Animation.easeInOut(duration: 0.7))
            CardView()
                .background(show ? Color.red:Color("background8"))
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x:0,y:show ? -200:-20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees:show ? 10:0))
                .blendMode(.hardLight)
                .animation(Animation.easeInOut(duration:0.5))
                
            CertificateView()
                .offset(x:viewState.width,y:viewState.height)
                .rotationEffect(Angle(degrees: show ? 5:0))
            //.rotation3DEffect(Angle(degrees:show ? 30:0), axis: (x: 10, y: 10, z: 10))
                .animation(.default)
                .onTapGesture {
                    self.show.toggle()
            }
        .gesture(DragGesture()
        
            
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            Text("Card Back")
        }
        .frame(width:340,height:220)
        
        
    }
}

struct CertificateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                    
                    Text(/*@START_MENU_TOKEN@*/"certificate"/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width:30.0,height:30.0)
            }
            .padding(.horizontal)
            Spacer()
            Image("Background")
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(15)
        .shadow(radius: 20)
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            Image("Illustration5")
            Spacer()
        }.padding()
    }
}

struct CardBottomView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Rectangle()
                .frame(width:60,height: 6)
                .cornerRadius(3)
                .opacity(0.1)
            
            Text("1321313113 1231231 1231231 123131 123123 1231231 3123123 12321333 1231312 123231123 123131 1231")
            Spacer()
                .lineLimit(5)
            
        }.padding()
            .frame(minWidth:0,maxWidth: .infinity)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(radius: 20)
            .offset(y:600)
    }
}
