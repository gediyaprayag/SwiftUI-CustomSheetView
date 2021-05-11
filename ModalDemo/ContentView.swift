//
//  ContentView.swift
//  ModalDemo
//
//  Created by mac on 09/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var presentModal: Bool = false
    var body: some View {
        ZStack {
            Color.pink
            Button(action: {
                presentModal.toggle()
            }, label: {
                Text("Present Modal")
                    .fontWeight(.bold)
                    .font(.title)
            })
        }.modal(present: $presentModal, view: ModalView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
