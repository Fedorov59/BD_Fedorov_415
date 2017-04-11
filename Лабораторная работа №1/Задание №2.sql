ALTER TABLE tCaterer
  DROP COLUMN address
  ADD legal_address NVARCHAR2(30) NULL
  ADD actual_address NVARCHAR2(30) NULL
  ADD email NVARCHAR2(30) NULL