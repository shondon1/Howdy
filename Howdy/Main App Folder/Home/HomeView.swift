//
//  HomeView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/20/23.
//

// HomeView.swift
//import SwiftUI
//
//struct HomeView: View {
//    // @ObservedObject var commentViewModel = CommentViewModel()
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color.white.edgesIgnoringSafeArea(.all)
//
//                VStack {
//                    Spacer()
//
//                    Image("yuji")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 100, height: 100)
//                        .clipShape(Circle())
//                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
//                        .shadow(radius: 5)
//
//                    // Display comments from Firebase
////                    List(commentViewModel.comments) { comment in
////                        VStack(alignment: .leading) {
////                            Text(comment.author)
////                                .font(.headline)
////                                .foregroundColor(.blue)
////                            Text(comment.content)
////                                .font(.body)
////                                .foregroundColor(.black)
////                        }
////                    }
//                    .onAppear {
//                        // Fetch comments when the view appears
//                       // commentViewModel.fetchComments()
//                    }
//
//                    // Your existing content
//                    VStack {
//                        Text("COWBOY SHONDON")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color.blue)
//                            .multilineTextAlignment(.center)
//
//                        Text("Welcome to my app! This is the first time I released something like this. Shoutout to the PMC fam! Can't wait to build more on to this. Remember! THE INTERNET IS NOT REAL")
//                            .font(.body)
//                            .fontWeight(.regular)
//                            .foregroundColor(Color.black)
//                            .multilineTextAlignment(.center)
//                    }
//
//                    Spacer()
//                }
//                .padding()
//                .frame(maxWidth: .infinity, alignment: .center)
//            }
//           // .navigationTitle("Home")
//        }
//    }
//}


// THIS IS THE HOME VIEW Now
// HomeView.swift(Revised)
//import SwiftUI
//
//struct HomeView: View {
//   // @ObservedObject var commentViewModel = CommentViewModel()
//
//    var body: some View {
//        NavigationView {
//            List(commentViewModel.comments) { comment in
//                Text(comment.text)
//            }
//            .navigationTitle("Top Comments")
//        }
//        .onAppear {
//            // Fetch initial comments
//            commentViewModel.fetchComments()
//        }
//    }
//}

//HomeView.swift
//import SwiftUI
//
//struct HomeView: View {
//    // Sample comments data for preview
//    private var comments: [Comment] = [
//        Comment(username: "Shondon", text: "This is a great comment!", profilePicture: "cmms3", timestamp: Date()),
//        Comment(username: "JaneSmith", text: "I agree with shon!", profilePicture: "logo", timestamp: Date()),
//    ]
//
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack {
//                    ForEach(comments, id: \.id) { comment in
//                        CommentView(comment: comment)
//                    }
//                }
//                .padding()
//            }
//        }
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

//import SwiftUI
//import Firebase
//import FirebaseDatabaseInternal
//
//struct HomeView: View {
//    @State private var comments: [Comment] = []
//
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack {
//                    ForEach(comments, id: \.id) { comment in
//                        CommentView(comment: comment)
//                    }
//                }
//                .padding()
//            }
//        }
//        .onAppear {
//            observeComments()
//        }
//    }
//
//    private func observeComments() {
//        // Replace with your actual database reference
//        let commentsRef = Database.database().reference().child("comments")
//
//        // Observe changes in the comments node
//        commentsRef.observe(.value) { snapshot in
//            var newComments: [Comment] = []
//
//            for child in snapshot.children {
//                if let snapshot = child as? DataSnapshot,
//                   let comment = Comment(snapshot: snapshot) {
//                    newComments.append(comment)
//                }
//            }
//
//            // Update comments array
//            self.comments = newComments
//        }
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

import SwiftUI

struct HomeView: View {
    @State private var comments: [Comment] = [
        Comment(username: "Shondon", text: "This is a great comment!", profilePicture: "cmms3", timestamp: Date()),
        Comment(username: "JaneSmith", text: "I agree with shon!", profilePicture: "logo", timestamp: Date()),
        // Add more sample comments as needed
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(comments, id: \.id) { comment in
                        CommentView(comment: comment)
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

