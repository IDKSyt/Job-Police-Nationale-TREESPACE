
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police Nationale', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police Nationale', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police Nationale', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police','Police Nationale')
;

INSERT INTO `job_grades` (id,job_name, grade, name, label, salary, skin_male, skin_female) VALUES
(1700, 'police', 0, 'grade0', 'Policier Adjoint', 150, '{}', '{}'),
(1701, 'police', 1, 'grade1', 'Gardien De La Paix Stagière', 150, '{}', '{}'),
(1702, 'police', 2, 'grade2', 'Gardien De La Paix Titulaire', 150, '{}', '{}'),
(1703, 'police', 3, 'grade3', 'Sous Brigadier', 150, '{}', '{}'),
(1704, 'police', 4, 'grade4', 'Brigadier', 150, '{}', '{}'),
(1705, 'police', 5, 'grade5', 'Brigadier Chef', 150, '{}', '{}'),
(1706, 'police', 6, 'grade6', 'Major', 150, '{}', '{}'),
(1707, 'police', 7, 'grade7', 'Eleve Lieutenant', 150, '{}', '{}'),
(1708, 'police', 8, 'grade8', 'Lieutenant', 150, '{}', '{}'),
(1709, 'police', 9, 'grade9', 'Capitaine', 150, '{}', '{}'),
(1710, 'police', 10, 'grade10', 'Commandant', 150, '{}', '{}'),
(1711, 'police', 11, 'boss', 'Commissaire', 150, '{}', '{}'),
(1712, 'police', 12, 'boss', 'Commissaire Divisionnaire', 1000, '{}', '{}');