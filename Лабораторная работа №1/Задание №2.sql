ALTER TABLE tCaterer
  DROP COLUMN address;
ALTER TABLE tCaterer
  ADD ( legal_address NVARCHAR2(30) NULL,
        actual_address NVARCHAR2(30) NULL,
        email NVARCHAR2(30) NULL);