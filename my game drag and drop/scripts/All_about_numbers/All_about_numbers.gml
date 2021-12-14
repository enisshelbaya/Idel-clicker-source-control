// LARGE NUMBERS
//  - Delio Sabanal Orlanda

// Thank you for using my Program


#macro FIRSTLETTER 92 // the ascii code of "a" minus 5

function Number_Abbreviate(array_) {
	var numLog_ = array_length(array_);
	var realnum_    = 0;
	var decimalnum_ = "";
	if  (numLog_ > 1) {
		realnum_    = array_[numLog_-1]; 
		var strDec_ = string(array_[numLog_-2]);
		var decimal_ = string_repeat("0",3-string_length(strDec_)) + strDec_;
		if string_length(realnum_) < 3 
			decimalnum_  = "." + string_copy(decimal_,1,3-string_length(realnum_));
		else 
			decimalnum_  = "" ;
		
	} else  {
		var strDec_ = string(array_[numLog_-1]);
		var decimal_ = string_repeat("0",3-string_length(strDec_)) + strDec_;
		decimalnum_  = "." + string_copy(decimal_,1,2);
	}
	var unit = "";
	var num_ = string(realnum_) + decimalnum_;
	switch (numLog_-1) {
	    case 0: unit = "";  break;
		case 1: unit = "";  break;
	    case 2: unit = "K"; break;
		case 3: unit = "M"; break;
		case 4: unit = "B"; break;
		case 5: unit = "T"; break;
	    default:
			var firstNotation = (numLog_-7) div 26;
			var secondNotation = (numLog_-7) mod 26;
			unit =  chr(firstNotation+ord("a"))+chr(secondNotation+ord("a"));
	        break;
	}
	return  num_ + unit;
}


function Number_Adjust(array_){
		for (var i = 0; i < array_length(array_); ++i) {
		    if array_[i] > 999 {
				adjust_ = true;
				var numberleft = (array_[i] mod 1000) ;
				if i == array_length(array_)-1 {
					array_[i+1] = floor(array_[i] / 1000);
					array_[i] = numberleft;
				} else {
					array_[i+1] += floor(array_[i] / 1000);
					array_[i] = numberleft;
				}
			} else if array_[i] < 0 {
				adjust_ = true;
				array_[i+1] -= 1;
				array_[i] = 1000 + array_[i];
			} else {
				adjust_ = false;
			}
		}
	return array_;
}


function Number_isSufficient(array_,otherArray_){
	if  array_length(array_) < array_length(otherArray_){
		return false;	
	} else if  array_length(array_) > array_length(otherArray_){
		return true;
	}
	for (var i = array_length(array_)-1; i >= 0 ; --i) {
	    if array_[i] < otherArray_[i] {
			return false;
		} 
	}
	return true;
}


// if number decreasing this will decrease the array size
// you can put it in Step Events
function Number_TrimArray(array_){ 
	var len_ = array_length(array_)-1;
	for (var i = len_ ; i >= 0 ; --i) {
	    if array_[i] <= 0 {
			array_resize(array_,i);
		} else {
			return array_;	
		}
	}
	if (array_length(array_)==0) array_[0]=0;
	return array_;
}

function Number_Convert_StringToArray(string_) {
	var firstLetter_, notation_,not1_,not2_,value_,
	    place1_,place2_,arr,finalnotValue_;
		
	arr[0]=0;
	firstLetter_ = FIRSTLETTER;
	notation_  = string_letters(string_);
	not1_      = string_char_at(notation_,1);
	not2_      = string_char_at(notation_,2);
	value_     = string_replace(string_,notation_,"");
	place1_=0;
	place2_=0;
	switch (notation_) {
	    case "":  place2_ = 1; break;
	    case "K": place2_ = 2; break;
		case "M": place2_ = 3; break;
		case "B": place2_ = 4; break;
		case "T": place2_ = 5; break;
	    default:
			place1_    = ord(not1_) - firstLetter_  - 5;
			place2_    = ord(not2_) - firstLetter_  + 1;
	        break;
	}
	finalnotValue_ = (place1_ * 26) + place2_;
	var hasDecimal = false;
	var sub_str = "";
	for(var i = 1; i < string_length(value_)+1; ++i){
	   var next_char = string_char_at(value_,i);
	   if (next_char != ".")   {
	       sub_str = sub_str + next_char;
	   }  else  {
	       //ADD TO ARRAY
		   hasDecimal = true;
	       if(sub_str!="") arr[finalnotValue_--] = real(sub_str);
	       sub_str = "";
	   }
	}
	if(sub_str!="") {
		if hasDecimal{
			arr[finalnotValue_] = real("."+sub_str) * 1000;
		} else {
			arr[finalnotValue_] = real(sub_str);
		}
		
	} 
	return arr;
}

function Number_Add_StringToString(string_,string2_){
	var array_ = Number_Convert_StringToArray(string_);
	var otherArray_ = Number_Convert_StringToArray(string2_);
	var lenMoney = array_length(array_);
	var lenTemp  = array_length(otherArray_);
	if lenTemp > lenMoney  {
		array_[lenTemp-1]=0;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] += (otherArray_[i]);
	}	
	return array_;
}

function Number_Add_ArrayToString(array_,string_){
	var otherArray_ = Number_Convert_StringToArray(string_);
	var lenMoney = array_length(array_);
	var lenTemp  = array_length(otherArray_);
	if lenTemp > lenMoney  {
		array_[lenTemp-1]=0;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] += (otherArray_[i]);
	}	
	return array_;
}


function Number_Add_ArrayToArray(array_,otherArray_){
	var lenMoney = array_length(array_);
	var lenTemp  = array_length(otherArray_);
	if lenTemp > lenMoney  {
		array_[lenTemp-1]=0;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] += (otherArray_[i]);
	}	
	return array_;
}

function Number_Deduct_StringToString(string_,string2_){
	var array_ = Number_Convert_StringToArray(string_);
	var otherArray_ = Number_Convert_StringToArray(string2_);
	var lenTemp  = array_length(otherArray_);
	if !Number_isSufficient(array_,otherArray_) {
		return array_;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] -= (otherArray_[i]);
	}	
	
	return array_;
}

function Number_Deduct_ArrayToString(array_,string_){
	var otherArray_ = Number_Convert_StringToArray(string_);
	var lenTemp  = array_length(otherArray_);
	if !Number_isSufficient(array_,otherArray_) {
		return array_;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] -= (otherArray_[i]);
	}	
	return array_;
}

function Number_Deduct_ArrayToArray(array_,otherArray_){
	var lenTemp  = array_length(otherArray_);
	if !Number_isSufficient(array_,otherArray_) {
		return array_;
	}
	for (var i = 0; i < lenTemp; ++i) {
			array_[i] -= (otherArray_[i]);
	}	
	return array_;
}