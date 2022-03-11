/// @description Insert description here
// You can write your code in this editor
if (o_save.Currency_increase > 100000000)   // makers sure
	{
				num_process = o_save.Currency_increase;
				number_array=[]
				while (num_process >= 1)
				{
				    num_process = num_process / 1000;
				    array_push(number_array,floor(frac(num_process) * 1000));
				}
				number_abbreviated = Number_Abbreviate(number_array)
		}