SELECT *
FROM prescription


--(a)Which prescriber had the highest total number of claims (totaled over all drugs)? 
--Report the npi and the total number of claims. 
--(B)Repeat the above, but this time report the
--nppes_provider_first_name, nppes_provider_last_org_name,  
--specialty_description, and the total number of claims.

SELECT DISTINCT(total_claim_count),npi,drug_name
FROM prescription
GROUP BY (total_claim_count),npi,drug_name
ORDER BY drug_name

SELECT winter_games.athlete_id, winter_games.event, summer_games.event
FROM winter_games LEFT JOIN summer_games
USING(athlete_id);