# MechaCar

## Linear Regression to Predict MPG

The database of this project is  a CSV file. First of all, I read and import the file to the R with the below code

	 MechaCar <- read.csv(file="MechaCar_mpg.csv")

The multiple linear regression was used because we would like to consider relationship between independents variable and multiple dependent variables. In this stage we are looking for to calculate the below formula;

	 Y= m1x1+m2x2+m3x3+…+b

Also based on the r-squared, we can determine if the model significantly predict our dependent variable or not.

The below codes are used to calculate multi linear regression;

	 lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=MechaCar)

	 summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=MechaCar))


![R1](https://user-images.githubusercontent.com/91231253/154819767-18cd86ad-ba42-4721-b11d-0e2de314c01c.png)

To determine the most important independent variables to the linear model, we should consider the p-value of each ones. If it is less than 0.05, it means that H0 will be "rejected" and if it is greater than 0.05, it means that H0 will be "failed to rejected".

![R2](https://user-images.githubusercontent.com/91231253/154819893-97dbd4e3-e642-4f16-bb46-bd3558766afb.png)


Null hypothesis : H0 : there is not ant relationship between dependent variable and independent variables

Alternative hypothesis : H1 : there is not ant relationship between dependent variable and independent variables

	 -  Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
	 vehicle_length 
	 ground_clearance
	 

	 - Is the slope of the linear model considered to be zero? Why or why not? 
	 The intercept and slopes of each dependent variables are;
	 
	 
		(Intercept)    vehicle_length    vehicle_weight     spoiler_angle  
 	 	-1.076e+02      6.240e+00         1.276e-03         8.031e-02  
		ground_clearance  
     		  3.659e+00


	
	-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
	Yes, Beacuse the R-squared = 0.7032 
