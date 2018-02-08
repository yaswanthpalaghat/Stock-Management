function requiredItem(){
	var itemName=document.item.itemName.value;
	var unit=document.item.dateOfManufacture.value;
	if(itemName==""){
		alert("Please Enter Item Name");
		document.item.itemName.focus();
		return false;
	}
	else if(unit==""){
		alert("Please enter dateOfManufacture");
		document.item.dateOfManufacture.focus();
		return false;
	}
	else{
		return true;
	}
}