//
//  ModalExtensions.swift
//  ModalDemo
//
//  Created by mac on 09/05/21.
//

import SwiftUI

extension View {
    func modal<Modal: View>(present: Binding<Bool>, view: Modal, heightRatio: CGFloat = 0.05, blur: Bool = true, blurRadius: CGFloat = 3, opaque: Bool = true) -> some View {
        self.if(blur && present.wrappedValue) {
            $0.blur(radius: blurRadius)
        }.overlay(
            ZStack {
                if present.wrappedValue {
                    ModalHelperView(content: AnyView(view), header: nil, isPresented: present, heightRatio: heightRatio)
                } else {
                    EmptyView()
                }
            }
        )
    }
    
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}


