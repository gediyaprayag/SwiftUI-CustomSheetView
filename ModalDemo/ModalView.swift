//
//  ModalView.swift
//  ModalDemo
//
//  Created by mac on 09/05/21.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
            Text("This is Modal View")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
