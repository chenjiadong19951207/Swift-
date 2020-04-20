//
//  ContentView.swift
//  DesignCode
//
//  Created by Wood Chen on 2020/4/18.
//  Copyright © 2020 Wood Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            TitleView()
             .blur(radius: 20)
            
            
            CardBottomView()
                .blur(radius: 20)
            
            CardView().offset(x:0,y:-40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: 15))
                .rotation3DEffect(Angle(degrees:50), axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
            CardView().offset(x:0,y:-20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 10))
                .rotation3DEffect(Angle(degrees:40), axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
            CertificateView()
                .rotationEffect(Angle(degrees: 5))
                .rotation3DEffect(Angle(degrees:30), axis: (x: 10, y: 10, z: 10))
            
            
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
        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x:0,y:-20)
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
