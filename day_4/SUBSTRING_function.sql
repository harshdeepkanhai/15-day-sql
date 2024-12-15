SELECT
email,
SUBSTRING(email from POSITION('.' in email)+1 for POSITION('@' in email) - POSITION('.' in email)-1)
FROM customer;