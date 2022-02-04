The table below gives the forward reactions simulated, i.e. reversible carbon fixation. 

Forward reactants 	Forward products 	Propensity function 	Parameters

CO2, H2 		formic acid 		k1 ∗ CO2 ∗ H2 		k1 = 10
formic acid, H2 	formaldehyde, H2O 	k2 ∗ formic acid ∗ H2 	k2 = 19.9
formaldehyde, H2 	methanol 		k3 ∗ formaldehyde ∗ H2 	k3 = 23.5
methanol, CO 		acetic acid 		k4 ∗ methanol ∗ CO 	k4 = 0.869
CO2, H2 		CO, H2 			k5 ∗ CO2 ∗ H2 		k5 = 0.061


I've written up the parameters used for the data yielded by each simulation. 
The propensity_fnc column should indicate the reactants (and hence reaction direction). 


> forward_simulation.csv

propensity_fnc		parameters

k_1*CO2*H2		k_1 = 10			
k_2*formic_acid*H2	k_2 = 19.9			
k_3*formaldehyde*H2	k_3 = 23.5			
k_4*methanol*CO		k_4 = 0.869			
k_5*CO2*H2		k_5 = 0.061


> rev_equal_backw_rate.csv

propensity_fnc		parameters

k_1*CO2*H2		k_1 = 10			
k_1a*formic_acid	k_1a = 0.001			
k_2*formic_acid*H2	k_2 = 19.9			
k_2a*formaldehyde*H2O	k_2a = 0.0199			
k_3*formaldehyde*H2	k_3 = 23.5			
k_3a*methanol		k_3a = 0.0235			
k_4*methanol*CO		k_4 = 0.869			
k_4a*acetic_acid	k_4a = 0.000869			
k_5*CO2*H2		k_5 = 0.061			
k_5a*CO*H2O		k_5a = 6.1e-05


> rev_negligible_backw_rate.csv

propensity_fnc 		parameters

k_1*CO2*H2		k_1 = 10			
k_1a*formic_acid	k_1a = 10			
k_2*formic_acid*H2	k_2 = 19.9			
k_2a*formaldehyde*H2O	k_2a = 19.9			
k_3*formaldehyde*H2	k_3 = 23.5			
k_3a*methanol		k_3a = 23.5			
k_4*methanol*CO		k_4 = 0.869			
k_4a*acetic_acid	k_4a = 0.869			
k_5*CO2*H2		k_5 = 0.061			
k_5a*CO*H2O		k_5a = 0.061