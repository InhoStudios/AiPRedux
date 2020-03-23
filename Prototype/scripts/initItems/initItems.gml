globalvar item;
globalvar itemSpr;
globalvar itemObj;
globalvar itemStackable;
globalvar itemName;

enum Items {
	TOTAL
};

for(var i = 0; i < Items.TOTAL; i++) {
	item[i] = 0;
}

initNames();