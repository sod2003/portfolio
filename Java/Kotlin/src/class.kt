open class SuperClass(anInt: Int) {
    protected val _anInt = anInt

    override fun toString(): String {
        return "${this::class.simpleName} (anInt: $_anInt)"
    }

    open fun multiply(factor: Int): Int {
        return _anInt * factor
    }
}

class SubClass(anInt: Int): SuperClass(anInt) {
//    override fun toString(): String {
//        return "SubClass(anInt: $_anInt)"
//    }
}