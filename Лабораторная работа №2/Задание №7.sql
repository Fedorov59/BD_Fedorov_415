INSERT INTO tMessure (ID_Messure, name) VALUES (seq_messure.nextval, 'ШТ');
INSERT INTO tMessure (ID_Messure, name) VALUES (seq_messure.nextval, 'КГ');
INSERT INTO tMessure (ID_Messure, name) VALUES (seq_messure.nextval, 'М');
INSERT INTO tMessure (ID_Messure, name) VALUES (seq_messure.nextval, 'Л');
INSERT INTO tMessure (ID_Messure, name) VALUES (seq_messure.nextval, 'КБ');

INSERT INTO tGroup (ID_Group, name) VALUES (seq_group.nextval, 'GROUP1');
INSERT INTO tGroup (ID_Group, name) VALUES (seq_group.nextval, 'GROUP2');
INSERT INTO tGroup (ID_Group, name) VALUES (seq_group.nextval, 'GROUP3');
INSERT INTO tGroup (ID_Group, name) VALUES (seq_group.nextval, 'GROUP4');
INSERT INTO tGroup (ID_Group, name) VALUES (seq_group.nextval, 'GROUP5');

INSERT INTO tMaterial (ID_Material, name, ID_Messure, ID_Group) VALUES (seq_material.nextval, 'MATNAME1', 1, 1);
INSERT INTO tMaterial (ID_Material, name, ID_Messure, ID_Group) VALUES (seq_material.nextval, 'MATNAME2', 2, 2);
INSERT INTO tMaterial (ID_Material, name, ID_Messure, ID_Group) VALUES (seq_material.nextval, 'MATNAME3', 3, 3);
INSERT INTO tMaterial (ID_Material, name, ID_Messure, ID_Group) VALUES (seq_material.nextval, 'MATNAME4', 4, 4);
INSERT INTO tMaterial (ID_Material, name, ID_Messure, ID_Group) VALUES (seq_material.nextval, 'MATNAME5', 5, 5);

INSERT INTO tStore (ID_Store, name) VALUES (seq_store.nextval, 'STORENAME1');
INSERT INTO tStore (ID_Store, name) VALUES (seq_store.nextval, 'STORENAME2');
INSERT INTO tStore (ID_Store, name) VALUES (seq_store.nextval, 'STORENAME3');
INSERT INTO tStore (ID_Store, name) VALUES (seq_store.nextval, 'STORENAME4');
INSERT INTO tStore (ID_Store, name) VALUES (seq_store.nextval, 'STORENAME5');

INSERT INTO tCaterer (ID_Caterer, name, phone, fax, legal_address, actual_address, email)
VALUES (seq_caterer.nextval, 'CATERER1', '3249825', '3274', 'LEGALADD1', 'ACTUALADD1', 'EMAILADD1');
INSERT INTO tCaterer (ID_Caterer, name, phone, fax, legal_address, actual_address, email)
VALUES (seq_caterer.nextval, 'CATERER2', '3249826', '3275', 'LEGALADD2', 'ACTUALADD2', 'EMAILADD2');
INSERT INTO tCaterer (ID_Caterer, name, phone, fax, legal_address, actual_address, email)
VALUES (seq_caterer.nextval, 'CATERER3', '3249827', '3276', 'LEGALADD3', 'ACTUALADD3', 'EMAILADD3');
INSERT INTO tCaterer (ID_Caterer, name, phone, fax, legal_address, actual_address, email)
VALUES (seq_caterer.nextval, 'CATERER4', '3249828', '3277', 'LEGALADD4', 'ACTUALADD4', 'EMAILADD4');
INSERT INTO tCaterer (ID_Caterer, name, phone, fax, legal_address, actual_address, email)
VALUES (seq_caterer.nextval, 'CATERER5', '3249829', '3278', 'LEGALADD5', 'ACTUALADD5', 'EMAILADD5');

INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 1, 1, 1, SYSDATE, 21);
INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 2, 2, 2, SYSDATE, 22);
INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 2, 2, 2, SYSDATE, 23);
INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 3, 3, 3, SYSDATE, 24);
INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 4, 4, 4, SYSDATE, 25);
INSERT INTO tSupply (ID_Supply, ID_Caterer, ID_Material, ID_Store, supply_date, volume)
VALUES (seq_supply.nextval, 5, 5, 5, SYSDATE, 26);

INSERT INTO tSurplus (ID_Material, ID_Store, volume) VALUES (seq_surplus.nextval, 1, 10);
INSERT INTO tSurplus (ID_Material, ID_Store, volume) VALUES (seq_surplus.nextval, 2, 11);
INSERT INTO tSurplus (ID_Material, ID_Store, volume) VALUES (seq_surplus.nextval, 3, 12);
INSERT INTO tSurplus (ID_Material, ID_Store, volume) VALUES (seq_surplus.nextval, 4, 13);
INSERT INTO tSurplus (ID_Material, ID_Store, volume) VALUES (seq_surplus.nextval, 5, 14);

INSERT INTO tInprice (ID_Material, price_date, price) VALUES (1, SYSDATE, 101);
INSERT INTO tInprice (ID_Material, price_date, price) VALUES (2, SYSDATE, 102);
INSERT INTO tInprice (ID_Material, price_date, price) VALUES (3, SYSDATE, 103);
INSERT INTO tInprice (ID_Material, price_date, price) VALUES (4, SYSDATE, 104);
INSERT INTO tInprice (ID_Material, price_date, price) VALUES (5, SYSDATE, 105); 

INSERT INTO tEmployer (ID_Employer, surname, name, father_name) VALUES (seq_employer.nextval, 'SURNAMEEMP1', 'NAMEEMPIOYER1', 'FATHNAMEEMP1');
INSERT INTO tEmployer (ID_Employer, surname, name, father_name) VALUES (seq_employer.nextval, 'SURNAMEEMP2', 'NAMEEMPIOYER2', 'FATHNAMEEMP2');
INSERT INTO tEmployer (ID_Employer, surname, name, father_name) VALUES (seq_employer.nextval, 'SURNAMEEMP3', 'NAMEEMPIOYER3', 'FATHNAMEEMP3');
INSERT INTO tEmployer (ID_Employer, surname, name, father_name) VALUES (seq_employer.nextval, 'SURNAMEEMP4', 'NAMEEMPIOYER4', 'FATHNAMEEMP4');
INSERT INTO tEmployer (ID_Employer, surname, name, father_name) VALUES (seq_employer.nextval, 'SURNAMEEMP5', 'NAMEEMPIOYER5', 'FATHNAMEEMP5');

INSERT INTO tSection (ID_Section, name, ID_Employer) VALUES (seq_section.nextval, 'SECTION1', 1);
INSERT INTO tSection (ID_Section, name, ID_Employer) VALUES (seq_section.nextval, 'SECTION2', 2);
INSERT INTO tSection (ID_Section, name, ID_Employer) VALUES (seq_section.nextval, 'SECTION3', 3);
INSERT INTO tSection (ID_Section, name, ID_Employer) VALUES (seq_section.nextval, 'SECTION4', 4);
INSERT INTO tSection (ID_Section, name, ID_Employer) VALUES (seq_section.nextval, 'SECTION5', 5);

INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 1, 1, 1, SYSDATE);
INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 2, 2, 2, SYSDATE);
INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 2, 2, 2, SYSDATE);
INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 3, 3, 3, SYSDATE);
INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 4, 4, 4, SYSDATE);
INSERT INTO tDeliver (ID_Deliver, ID_Section, ID_Material, ID_Store, deliver_date)
VALUES (seq_deliver.nextval, 5, 5, 5, SYSDATE);