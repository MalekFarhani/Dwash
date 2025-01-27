-- Drop the tables with CASCADE
DROP TABLE IF EXISTS dwash.user_type CASCADE;

-- Create the user_type table with SERIAL
CREATE TABLE dwash.user_type (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL
);

-- Insert the required user types
INSERT INTO dwash.user_type (type) VALUES ('ADMIN');
INSERT INTO dwash.user_type (type) VALUES ('FREELANCER');
INSERT INTO dwash.user_type (type) VALUES ('CONSUMER');

-- Verify the insertion
SELECT * FROM dwash.user_type;

-- Re-establish the foreign key constraint
ALTER TABLE dwash."user" 
ADD CONSTRAINT user_type_fk 
FOREIGN KEY (ur_type) 
REFERENCES dwash.user_type(id);