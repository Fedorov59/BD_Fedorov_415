CREATE TABLE tGroup(
  ID_Group INT NOT NULL ENABLE,
  name NVARCHAR2(40) NOT NULL ENABLE,
  CONSTRAINT pk_Group PRIMARY KEY(ID_GROUP) ENABLE);

ALTER TABLE tMaterial ADD ID_Group INT NOT NULL;
ALTER TABLE tMaterial add constraint fk_Material_Group foreign key (ID_Group) references tGroup (ID_Group) on delete set null;