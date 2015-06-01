//: Playground - noun: a place where people can play

import UIKit
class MediaItem {
    var name:String
    init (name:String) {
        self.name = name
    }
}


class Movie: MediaItem {
    var director:String
    init(name: String, director :String) {
        self.director = director;
        super.init(name: name)
    }
}


class Song: MediaItem {
    var artist:String
    init(name: String, artist: String) {
         self.artist = artist
        super.init(name: name)
    }
}

let library = [
Movie(name: "Casablanca", director: "Michel"),
    Song(name: "Blue", artist: "Elvis")
]

var movieCount = 0;
var songCount = 0;

for item in library {
    if item is Movie {
        ++movieCount
    } else if (item is Song) {
        ++songCount
    }
}

for item in library {
    if let movie = item as? Movie {
        movie
    } else if let song = item as? Song {
      song
    }
}

let someObjects: [AnyObject] = [
    
    Movie(name: "A Space Odyssey", director: "Stanley"),
    Movie(name: "Moon", director: "Jones")


]

for object in someObjects   {
    let movie = object as! Movie
    movie.name
}

for object in someObjects as! [Movie]   {
    
    object.name
}





