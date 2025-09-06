-- create a join table


select * 
from absenteeism_at_work AS a
left join compensation AS c
on a.id = c.id
left join reasons AS r
on a.reason_for_absence = r.Number;


-- find the healthiest employees for the bonus
select *
from absenteeism_at_work
where social_drinker = "0" AND social_smoker = "0"
AND Bodymass_index < "25" AND absenteeism_time_in_hours <(select AVG(absenteeism_time_in_hours) from absenteeism_at_work);

-- compensation rate increase for non smokers / budget = 983,221
-- calculate how many working hours in a year (2080)
-- multiply working hours in a year by no. of non-smokers (686*2080 = 1,486,880)
-- divide budget by the a/m number = (983,221/1,486,220) =0.68 increase by hour
-- yearly increase amount (2080 * 0.68) = $1414.4
select count(*) as non_smokers
from absenteeism_at_work
where social_smoker = "0";



-- optimize the query
select 
a.ID,
 r.Reason, 
 month_of_absence,
 Bodymass_index,
 CASE WHEN Bodymass_index < 18.5 THEN "Underweight"
      WHEN Bodymass_index BETWEEN 18.5 AND 25 THEN "Healthy Weight"
      WHEN Bodymass_index BETWEEN 25 AND 30 THEN "Overweight"
      WHEN Bodymass_index >  30 THEN "Obese"
      ELSE "Unknown" END AS BMI_category,
      
      
CASE WHEN month_of_absence IN (12,1,2) THEN 'Winter' 
	 WHEN month_of_absence IN(3,4,5) THEN 'Spring'
     WHEN month_of_absence IN(6,7,8) THEN 'Summer'
     WHEN month_of_absence IN(9,10,11) THEN 'Autumn'
     ELSE 'Unknown'
     END AS seasons_name,
month_of_absence,
Day_of_the_week,
transportation_expense,
education,
son,
social_drinker,
social_smoker,
pet,
age,
Workload_average_day,
absenteeism_time_in_hours
from absenteeism_at_work AS a
left join compensation AS c
on a.id = c.id
left join reasons AS r
on a.reason_for_absence = r.Number;

