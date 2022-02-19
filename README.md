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



## Create Visualizations for the Trip Analysis

The database of this part is  one csv file,  It is imported and road by the below code:

	 -Suspension <- read.csv(file="Suspension_Coil.csv")

The statistical summary of the data is  calculated by the following code;

total_summery <- Suspension%>% summarise( mean=mean(PSI), median=median(PSI), variance=var(PSI),sd=sd(PSI))

![R3](https://user-images.githubusercontent.com/91231253/154820247-a26b04f2-401c-45d6-9925-9feb51df6c81.png)


The database is grouped based  on manufacturing_lot and then  the statistical summary of it is calculated (it means that the statistical summary is calculated for each group)

	 group_lot <- Suspension %>% group_by(Manufacturing_Lot) %>% summarise( mean=mean(PSI), median=median(PSI), variance=var(PSI),sd=sd(PSI))



The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Based on our result; total variance is less than 100, and also variances of lot1 & lot2  are less than 100.Otherwise, the variance of lot3 is more than 100.
