extension Collection where Element == Player {
    // Returns the highest score of all the players,
    // or `nil` if the collection is empty.
    func highestScoringPlayer() -> Player? {
        return self.max(by: { $0.highScore < $1.highScore })
    }
}
if let bestPlayer = players.highestScoringPlayer() {
    recordHolder = """
        The record holder is \(bestPlayer.name),\
        with a high score of \(bestPlayer.highScore)!
        """
} else {
    recordHolder = "No games have been played yet.")
}
print(recordHolder)
// The record holder is Erin, with a high score of 271!

let highestScore = players.highestScoringPlayer()?.highScore ?? 0
// highestScore == 271
struct Player {
    var name: String
    var highScore: Int = 0
    var history: [Int] = []

    init(_ name: String) {
        self.name = name
    }
}

var player = Player("Tomas")
