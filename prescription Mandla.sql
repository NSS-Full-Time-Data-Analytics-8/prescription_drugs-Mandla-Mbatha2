SELECT *
FROM prescription


--(a)Which prescriber had the highest total number of claims (totaled over all drugs)? 
--Report the npi and the total number of claims. 
--(B)Repeat the above, but this time report the
--nppes_provider_first_name, nppes_provider_last_org_name,  
--specialty_description, and the total number of claims.

SELECT MAX(total_claim_count),npi,drug_name
FROM prescription
GROUP BY (total_claim_count),npi,drug_name
ORDER BY drug_name DESC;  

SELECT prescriber.nppes_provider_first_name, prescriber.nppes_provider_last_org_name,prescriber.specialty_description,prescription.total_claim_count
FROM prescriber LEFT JOIN prescription
USING(npi) 

_-2. a. Which specialty had the most total number of claims (totaled over all drugs)?

SELECT specialty_description,total_claim_count
FROM prescriber


--b. Which specialty had the most total number of claims for opioids?

--c. **Challenge Question:** Are there any specialties that appear in the prescriber table that have no associated prescriptions in the prescription table?
--d. **Difficult Bonus:** *Do not attempt until you have solved all other problems!* For each specialty, report the percentage of total claims by that specialty which are for opioids. Which specialties have a high percentage of opioids?






