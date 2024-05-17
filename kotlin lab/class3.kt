class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for (item in items) {
            totalPrice += item.price
        }
        return totalPrice
    }
}

data class Item(val name: String, val price: Double)
