interface Dog {
    var fur: String
    fun speak() {
        println("Woof!")
    }
}

fun makeItTalk(dog: Dog) {
    dog.speak()
}

fun reportBreed(name: String, dog: Dog) {
    println("$name is a ${dog::class.simpleName}")
    println("The dog's fur is ${dog.fur}")
}

class Retriever : Dog {
    override var fur: String
        get() = "Golden"
        set(value) {}
}