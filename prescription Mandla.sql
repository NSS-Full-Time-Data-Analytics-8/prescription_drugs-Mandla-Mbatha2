SELECT *
FROM prescription


--1.--a. Which prescriber had the highest total number of claims (totaled over all drugs)? 
--Report the npi and the total number of claims Repeat the above, but this time report the
--nppes_provider_first_name, nppes_provider_last_org_name,  
--specialty_description, and the total number of claims.

SELECT COUNT(total_claim_count),npi
FROM prescription
GROUP BY total_claim_count,npi