
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:

//Pass: 0, Swaps: 0/0, Array: [145, 902, -629, 827, -251, -237, 442, -522, -660]

var list : [String] = []
while true {
    if let nextWord =  readLine(), nextWord != "" {
        list.append(nextWord)
    } else {
        break
    }
}

//print("Pass: 0, Swaps: 0/0, Array: \(list)")
var smallest = list[0]
var index = 0
var current = 0
var total = list.count
var completed = "zzzz"
//var passes = 0

var greatest = list[0]
for num in list {
    if num > greatest {
        greatest = num
    }
}
for n in 0 ..< total-1 {
    index = 0
    smallest = greatest
    for num in list {
        if num < smallest && num > completed {
            smallest = num
        }
    }
    completed = smallest
//    let x = list[current]
    while list[index] != smallest {
        index += 1
    }
    list.swapAt(index, current)
    current += 1
    if n == total-2 {
        list.insert(list[total-1], at: 0)
        list.remove(at: (total))
    }
//    print("Pass: \(current), Swaps: 1/\(current), Array: \(list)")
}

//print(smallest)    

