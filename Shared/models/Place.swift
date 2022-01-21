//
//  Place.swift
//  CardView
//
//  Created by Ali Raza on 11/01/2022.
//

import Foundation

struct Place:Hashable{
    let image:String
    let title:String
    let city:String
    let desc:String
    
}
let places = [
Place(image: "https://images.unsplash.com/photo-1549877452-9c387954fbc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "New York", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1517713982677-4b66332f98de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGxhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "California", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1570168007204-dfb528c6958f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGxhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "UAE", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1615971304240-82c1793aa182?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "Engloand", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1519178614-68673b201f36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "South Africa", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1596306499317-8490232098fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "Singapore", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
Place(image: "https://images.unsplash.com/photo-1610906570945-f1463d3a6558?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60", title: "Image 1", city: "Westendes", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
];
