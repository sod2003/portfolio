data class DataItem constructor (private var _type: String?,
                    var size: String,
                    private var _price: Double) {
    init {
        _type = _type?.toUpperCase() ?: "Unknown"
    }

    var type: String? = _type
        get() = field ?: "Unknown"

    var price: Double =_price
        set(value) {
            field = value * 0.9
        }

    constructor(size: String, price: Double) : this(null, size, price) {
//        type = "Unknown"
    }
}