class ClickEvent(val x: Int, val y: Int)

interface ClickListener {
    fun onClick(event: ClickEvent)
}

class StatefulClass(listener: ClickListener) {
    private var _clickListener:ClickListener? = listener

    // The statefulClass can create anonymous ClickEvents through the clickMe function
    fun clickMe(x: Int, y: Int) {
        _clickListener?.onClick(ClickEvent(x, y))
    }
}