// abbreviates currency amount
if (global.stats.random_vars.Currency_amount > 1000000) // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.Currency_amount;
		number_array=[]
		while (num_process >= 1){
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}

if (global.stats.random_vars.manager_strength > 1000000) // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.manager_strength;
		number_array=[]
		while (num_process >= 1){
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated1 = Number_Abbreviate(number_array)
}


