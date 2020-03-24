globalvar item;
globalvar itemSpr;
globalvar itemObj;
globalvar itemStackable;
globalvar itemName;
globalvar maxItemStack;

maxItemStack = 16;

enum Items {
	GENERIC,
	TOTAL
};


// set values of all items to 0
for(var i = 0; i < Items.TOTAL; i++) {
	item[i] = 0;
}

initNames();
initSprites();
initObjects();
initStackable();