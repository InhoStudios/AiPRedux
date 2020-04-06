globalvar item; // count of how many items the player has total
globalvar itemSpr; // sprites for each item
globalvar itemObj; // objects for each item
globalvar itemStackable; // whether or not the item is stackable
globalvar itemName; // name of each item
globalvar maxItemStack;

maxItemStack = 5;

enum Items {
	GENERIC,
	TOTAL
}; // enumerator holds the IDs of each item. Accessed with Items.(ITEM_NAME)


// set values of all items to 0
for(var i = 0; i < Items.TOTAL; i++) {
	item[i] = 0;
}

initNames();
initSprites();
initObjects();
initStackable();