//
//  LoginView.swift
//  planner
//
//  Created by JaehyeonS on 5/22/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var loginFailed: Bool = false
    @State private var isAdminLoggedIn: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding()

                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)

                Button(action: {
                    login()
                }) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .padding(.bottom, 10)

                Button(action: {
                    isAdminLoggedIn = true
                }) {
                    Text("Admin Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }

                if loginFailed {
                    Text("Login failed. Please try again.")
                        .foregroundColor(.red)
                        .padding()
                }
            }
            .padding()
            .navigationDestination(isPresented: $isLoggedIn) {
                ContentView()
            }
            .navigationDestination(isPresented: $isAdminLoggedIn) {
                ContentView()
            }
        }
    }

    private func login() {
        // 로그인 로직을 여기에 추가합니다. 예를 들어, 간단한 검증 로직:
        if username == "user" && password == "password" {
            isLoggedIn = true
            loginFailed = false
        } else {
            loginFailed = true
        }
    }
}

#Preview {
    LoginView()
}
