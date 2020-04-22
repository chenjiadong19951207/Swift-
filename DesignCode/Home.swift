//
//  Home.swift
//  DesignCode
//
//  Created by Wood Chen on 2020/4/22.
//  Copyright © 2020 Wood Chen. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            MenuRow(image: "person.crop.circle", text: "My Account")
            MenuRow(image: "creditcard", text: "Billing")
            MenuRow(image: "person.and.person", text: "Team")
            MenuRow(image: "arrow.uturn.down", text: "Sign out")
            Spacer()
        }
    .padding(30)
        .padding(.top,20)
        .frame(minWidth:0,maxWidth:.infinity)
        .background(Color.white)
    .cornerRadius(30)
        .padding(.trailing,60)
    .shadow(radius: 20)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct MenuRow: View {
    var image = "creditcard"
    var text = "My Account"
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width:32,height:32)
            Text(text)
                .font(.headline)
            Spacer()
        }
    }
}
