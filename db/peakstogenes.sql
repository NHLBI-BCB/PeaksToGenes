DROP TABLE IF EXISTS upstream_annotation;
DROP TABLE IF EXISTS downstream_annotation;
DROP TABLE IF EXISTS transcript_annotation;
DROP TABLE IF EXISTS gene_body_annotation;
DROP TABLE IF EXISTS upstream_number_of_peaks;
DROP TABLE IF EXISTS downstream_number_of_peaks;
DROP TABLE IF EXISTS transcript_number_of_peaks;
DROP TABLE IF EXISTS gene_body_number_of_peaks;
DROP TABLE IF EXISTS available_genomes;
DROP TABLE IF EXISTS transcripts;
DROP TABLE IF EXISTS experiments;
CREATE TABLE transcripts (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	transcript TEXT NOT NULL UNIQUE
);
CREATE TABLE experiments (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	experiment TEXT NOT NULL UNIQUE
);
CREATE TABLE upstream_number_of_peaks (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_100Kb_Upstream_Number_of_Peaks REAL,
	_99Kb_Upstream_Number_of_Peaks REAL,
	_98Kb_Upstream_Number_of_Peaks REAL,
	_97Kb_Upstream_Number_of_Peaks REAL,
	_96Kb_Upstream_Number_of_Peaks REAL,
	_95Kb_Upstream_Number_of_Peaks REAL,
	_94Kb_Upstream_Number_of_Peaks REAL,
	_93Kb_Upstream_Number_of_Peaks REAL,
	_92Kb_Upstream_Number_of_Peaks REAL,
	_91Kb_Upstream_Number_of_Peaks REAL,
	_90Kb_Upstream_Number_of_Peaks REAL,
	_89Kb_Upstream_Number_of_Peaks REAL,
	_88Kb_Upstream_Number_of_Peaks REAL,
	_87Kb_Upstream_Number_of_Peaks REAL,
	_86Kb_Upstream_Number_of_Peaks REAL,
	_85Kb_Upstream_Number_of_Peaks REAL,
	_84Kb_Upstream_Number_of_Peaks REAL,
	_83Kb_Upstream_Number_of_Peaks REAL,
	_82Kb_Upstream_Number_of_Peaks REAL,
	_81Kb_Upstream_Number_of_Peaks REAL,
	_80Kb_Upstream_Number_of_Peaks REAL,
	_79Kb_Upstream_Number_of_Peaks REAL,
	_78Kb_Upstream_Number_of_Peaks REAL,
	_77Kb_Upstream_Number_of_Peaks REAL,
	_76Kb_Upstream_Number_of_Peaks REAL,
	_75Kb_Upstream_Number_of_Peaks REAL,
	_74Kb_Upstream_Number_of_Peaks REAL,
	_73Kb_Upstream_Number_of_Peaks REAL,
	_72Kb_Upstream_Number_of_Peaks REAL,
	_71Kb_Upstream_Number_of_Peaks REAL,
	_70Kb_Upstream_Number_of_Peaks REAL,
	_69Kb_Upstream_Number_of_Peaks REAL,
	_68Kb_Upstream_Number_of_Peaks REAL,
	_67Kb_Upstream_Number_of_Peaks REAL,
	_66Kb_Upstream_Number_of_Peaks REAL,
	_65Kb_Upstream_Number_of_Peaks REAL,
	_64Kb_Upstream_Number_of_Peaks REAL,
	_63Kb_Upstream_Number_of_Peaks REAL,
	_62Kb_Upstream_Number_of_Peaks REAL,
	_61Kb_Upstream_Number_of_Peaks REAL,
	_60Kb_Upstream_Number_of_Peaks REAL,
	_59Kb_Upstream_Number_of_Peaks REAL,
	_58Kb_Upstream_Number_of_Peaks REAL,
	_57Kb_Upstream_Number_of_Peaks REAL,
	_56Kb_Upstream_Number_of_Peaks REAL,
	_55Kb_Upstream_Number_of_Peaks REAL,
	_54Kb_Upstream_Number_of_Peaks REAL,
	_53Kb_Upstream_Number_of_Peaks REAL,
	_52Kb_Upstream_Number_of_Peaks REAL,
	_51Kb_Upstream_Number_of_Peaks REAL,
	_50Kb_Upstream_Number_of_Peaks REAL,
	_49Kb_Upstream_Number_of_Peaks REAL,
	_48Kb_Upstream_Number_of_Peaks REAL,
	_47Kb_Upstream_Number_of_Peaks REAL,
	_46Kb_Upstream_Number_of_Peaks REAL,
	_45Kb_Upstream_Number_of_Peaks REAL,
	_44Kb_Upstream_Number_of_Peaks REAL,
	_43Kb_Upstream_Number_of_Peaks REAL,
	_42Kb_Upstream_Number_of_Peaks REAL,
	_41Kb_Upstream_Number_of_Peaks REAL,
	_40Kb_Upstream_Number_of_Peaks REAL,
	_39Kb_Upstream_Number_of_Peaks REAL,
	_38Kb_Upstream_Number_of_Peaks REAL,
	_37Kb_Upstream_Number_of_Peaks REAL,
	_36Kb_Upstream_Number_of_Peaks REAL,
	_35Kb_Upstream_Number_of_Peaks REAL,
	_34Kb_Upstream_Number_of_Peaks REAL,
	_33Kb_Upstream_Number_of_Peaks REAL,
	_32Kb_Upstream_Number_of_Peaks REAL,
	_31Kb_Upstream_Number_of_Peaks REAL,
	_30Kb_Upstream_Number_of_Peaks REAL,
	_29Kb_Upstream_Number_of_Peaks REAL,
	_28Kb_Upstream_Number_of_Peaks REAL,
	_27Kb_Upstream_Number_of_Peaks REAL,
	_26Kb_Upstream_Number_of_Peaks REAL,
	_25Kb_Upstream_Number_of_Peaks REAL,
	_24Kb_Upstream_Number_of_Peaks REAL,
	_23Kb_Upstream_Number_of_Peaks REAL,
	_22Kb_Upstream_Number_of_Peaks REAL,
	_21Kb_Upstream_Number_of_Peaks REAL,
	_20Kb_Upstream_Number_of_Peaks REAL,
	_19Kb_Upstream_Number_of_Peaks REAL,
	_18Kb_Upstream_Number_of_Peaks REAL,
	_17Kb_Upstream_Number_of_Peaks REAL,
	_16Kb_Upstream_Number_of_Peaks REAL,
	_15Kb_Upstream_Number_of_Peaks REAL,
	_14Kb_Upstream_Number_of_Peaks REAL,
	_13Kb_Upstream_Number_of_Peaks REAL,
	_12Kb_Upstream_Number_of_Peaks REAL,
	_11Kb_Upstream_Number_of_Peaks REAL,
	_10Kb_Upstream_Number_of_Peaks REAL,
	_9Kb_Upstream_Number_of_Peaks REAL,
	_8Kb_Upstream_Number_of_Peaks REAL,
	_7Kb_Upstream_Number_of_Peaks REAL,
	_6Kb_Upstream_Number_of_Peaks REAL,
	_5Kb_Upstream_Number_of_Peaks REAL,
	_4Kb_Upstream_Number_of_Peaks REAL,
	_3Kb_Upstream_Number_of_Peaks REAL,
	_2Kb_Upstream_Number_of_Peaks REAL,
	_1Kb_Upstream_Number_of_Peaks REAL
);
CREATE TABLE transcript_number_of_peaks (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_5Prime_UTR_Number_of_Peaks REAL,
	_Exons_Number_of_Peaks REAL,
	_Introns_Number_of_Peaks REAL,
	_3Prime_UTR_Number_of_Peaks REAL
);
CREATE TABLE gene_body_number_of_peaks (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_Gene_Body_0_to_10_Number_of_Peaks REAL,
	_Gene_Body_10_to_20_Number_of_Peaks REAL,
	_Gene_Body_20_to_30_Number_of_Peaks REAL,
	_Gene_Body_30_to_40_Number_of_Peaks REAL,
	_Gene_Body_40_to_50_Number_of_Peaks REAL,
	_Gene_Body_50_to_60_Number_of_Peaks REAL,
	_Gene_Body_60_to_70_Number_of_Peaks REAL,
	_Gene_Body_70_to_80_Number_of_Peaks REAL,
	_Gene_Body_80_to_90_Number_of_Peaks REAL,
	_Gene_Body_90_to_100_Number_of_Peaks REAL
);
CREATE TABLE downstream_number_of_peaks (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_1Kb_Downstream_Number_of_Peaks REAL,
	_2Kb_Downstream_Number_of_Peaks REAL,
	_3Kb_Downstream_Number_of_Peaks REAL,
	_4Kb_Downstream_Number_of_Peaks REAL,
	_5Kb_Downstream_Number_of_Peaks REAL,
	_6Kb_Downstream_Number_of_Peaks REAL,
	_7Kb_Downstream_Number_of_Peaks REAL,
	_8Kb_Downstream_Number_of_Peaks REAL,
	_9Kb_Downstream_Number_of_Peaks REAL,
	_10Kb_Downstream_Number_of_Peaks REAL,
	_11Kb_Downstream_Number_of_Peaks REAL,
	_12Kb_Downstream_Number_of_Peaks REAL,
	_13Kb_Downstream_Number_of_Peaks REAL,
	_14Kb_Downstream_Number_of_Peaks REAL,
	_15Kb_Downstream_Number_of_Peaks REAL,
	_16Kb_Downstream_Number_of_Peaks REAL,
	_17Kb_Downstream_Number_of_Peaks REAL,
	_18Kb_Downstream_Number_of_Peaks REAL,
	_19Kb_Downstream_Number_of_Peaks REAL,
	_20Kb_Downstream_Number_of_Peaks REAL,
	_21Kb_Downstream_Number_of_Peaks REAL,
	_22Kb_Downstream_Number_of_Peaks REAL,
	_23Kb_Downstream_Number_of_Peaks REAL,
	_24Kb_Downstream_Number_of_Peaks REAL,
	_25Kb_Downstream_Number_of_Peaks REAL,
	_26Kb_Downstream_Number_of_Peaks REAL,
	_27Kb_Downstream_Number_of_Peaks REAL,
	_28Kb_Downstream_Number_of_Peaks REAL,
	_29Kb_Downstream_Number_of_Peaks REAL,
	_30Kb_Downstream_Number_of_Peaks REAL,
	_31Kb_Downstream_Number_of_Peaks REAL,
	_32Kb_Downstream_Number_of_Peaks REAL,
	_33Kb_Downstream_Number_of_Peaks REAL,
	_34Kb_Downstream_Number_of_Peaks REAL,
	_35Kb_Downstream_Number_of_Peaks REAL,
	_36Kb_Downstream_Number_of_Peaks REAL,
	_37Kb_Downstream_Number_of_Peaks REAL,
	_38Kb_Downstream_Number_of_Peaks REAL,
	_39Kb_Downstream_Number_of_Peaks REAL,
	_40Kb_Downstream_Number_of_Peaks REAL,
	_41Kb_Downstream_Number_of_Peaks REAL,
	_42Kb_Downstream_Number_of_Peaks REAL,
	_43Kb_Downstream_Number_of_Peaks REAL,
	_44Kb_Downstream_Number_of_Peaks REAL,
	_45Kb_Downstream_Number_of_Peaks REAL,
	_46Kb_Downstream_Number_of_Peaks REAL,
	_47Kb_Downstream_Number_of_Peaks REAL,
	_48Kb_Downstream_Number_of_Peaks REAL,
	_49Kb_Downstream_Number_of_Peaks REAL,
	_50Kb_Downstream_Number_of_Peaks REAL,
	_51Kb_Downstream_Number_of_Peaks REAL,
	_52Kb_Downstream_Number_of_Peaks REAL,
	_53Kb_Downstream_Number_of_Peaks REAL,
	_54Kb_Downstream_Number_of_Peaks REAL,
	_55Kb_Downstream_Number_of_Peaks REAL,
	_56Kb_Downstream_Number_of_Peaks REAL,
	_57Kb_Downstream_Number_of_Peaks REAL,
	_58Kb_Downstream_Number_of_Peaks REAL,
	_59Kb_Downstream_Number_of_Peaks REAL,
	_60Kb_Downstream_Number_of_Peaks REAL,
	_61Kb_Downstream_Number_of_Peaks REAL,
	_62Kb_Downstream_Number_of_Peaks REAL,
	_63Kb_Downstream_Number_of_Peaks REAL,
	_64Kb_Downstream_Number_of_Peaks REAL,
	_65Kb_Downstream_Number_of_Peaks REAL,
	_66Kb_Downstream_Number_of_Peaks REAL,
	_67Kb_Downstream_Number_of_Peaks REAL,
	_68Kb_Downstream_Number_of_Peaks REAL,
	_69Kb_Downstream_Number_of_Peaks REAL,
	_70Kb_Downstream_Number_of_Peaks REAL,
	_71Kb_Downstream_Number_of_Peaks REAL,
	_72Kb_Downstream_Number_of_Peaks REAL,
	_73Kb_Downstream_Number_of_Peaks REAL,
	_74Kb_Downstream_Number_of_Peaks REAL,
	_75Kb_Downstream_Number_of_Peaks REAL,
	_76Kb_Downstream_Number_of_Peaks REAL,
	_77Kb_Downstream_Number_of_Peaks REAL,
	_78Kb_Downstream_Number_of_Peaks REAL,
	_79Kb_Downstream_Number_of_Peaks REAL,
	_80Kb_Downstream_Number_of_Peaks REAL,
	_81Kb_Downstream_Number_of_Peaks REAL,
	_82Kb_Downstream_Number_of_Peaks REAL,
	_83Kb_Downstream_Number_of_Peaks REAL,
	_84Kb_Downstream_Number_of_Peaks REAL,
	_85Kb_Downstream_Number_of_Peaks REAL,
	_86Kb_Downstream_Number_of_Peaks REAL,
	_87Kb_Downstream_Number_of_Peaks REAL,
	_88Kb_Downstream_Number_of_Peaks REAL,
	_89Kb_Downstream_Number_of_Peaks REAL,
	_90Kb_Downstream_Number_of_Peaks REAL,
	_91Kb_Downstream_Number_of_Peaks REAL,
	_92Kb_Downstream_Number_of_Peaks REAL,
	_93Kb_Downstream_Number_of_Peaks REAL,
	_94Kb_Downstream_Number_of_Peaks REAL,
	_95Kb_Downstream_Number_of_Peaks REAL,
	_96Kb_Downstream_Number_of_Peaks REAL,
	_97Kb_Downstream_Number_of_Peaks REAL,
	_98Kb_Downstream_Number_of_Peaks REAL,
	_99Kb_Downstream_Number_of_Peaks REAL,
	_100Kb_Downstream_Number_of_Peaks REAL
);
CREATE TABLE upstream_annotation (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_100Kb_Upstream_Peaks_Information TEXT,
	_99Kb_Upstream_Peaks_Information TEXT,
	_98Kb_Upstream_Peaks_Information TEXT,
	_97Kb_Upstream_Peaks_Information TEXT,
	_96Kb_Upstream_Peaks_Information TEXT,
	_95Kb_Upstream_Peaks_Information TEXT,
	_94Kb_Upstream_Peaks_Information TEXT,
	_93Kb_Upstream_Peaks_Information TEXT,
	_92Kb_Upstream_Peaks_Information TEXT,
	_91Kb_Upstream_Peaks_Information TEXT,
	_90Kb_Upstream_Peaks_Information TEXT,
	_89Kb_Upstream_Peaks_Information TEXT,
	_88Kb_Upstream_Peaks_Information TEXT,
	_87Kb_Upstream_Peaks_Information TEXT,
	_86Kb_Upstream_Peaks_Information TEXT,
	_85Kb_Upstream_Peaks_Information TEXT,
	_84Kb_Upstream_Peaks_Information TEXT,
	_83Kb_Upstream_Peaks_Information TEXT,
	_82Kb_Upstream_Peaks_Information TEXT,
	_81Kb_Upstream_Peaks_Information TEXT,
	_80Kb_Upstream_Peaks_Information TEXT,
	_79Kb_Upstream_Peaks_Information TEXT,
	_78Kb_Upstream_Peaks_Information TEXT,
	_77Kb_Upstream_Peaks_Information TEXT,
	_76Kb_Upstream_Peaks_Information TEXT,
	_75Kb_Upstream_Peaks_Information TEXT,
	_74Kb_Upstream_Peaks_Information TEXT,
	_73Kb_Upstream_Peaks_Information TEXT,
	_72Kb_Upstream_Peaks_Information TEXT,
	_71Kb_Upstream_Peaks_Information TEXT,
	_70Kb_Upstream_Peaks_Information TEXT,
	_69Kb_Upstream_Peaks_Information TEXT,
	_68Kb_Upstream_Peaks_Information TEXT,
	_67Kb_Upstream_Peaks_Information TEXT,
	_66Kb_Upstream_Peaks_Information TEXT,
	_65Kb_Upstream_Peaks_Information TEXT,
	_64Kb_Upstream_Peaks_Information TEXT,
	_63Kb_Upstream_Peaks_Information TEXT,
	_62Kb_Upstream_Peaks_Information TEXT,
	_61Kb_Upstream_Peaks_Information TEXT,
	_60Kb_Upstream_Peaks_Information TEXT,
	_59Kb_Upstream_Peaks_Information TEXT,
	_58Kb_Upstream_Peaks_Information TEXT,
	_57Kb_Upstream_Peaks_Information TEXT,
	_56Kb_Upstream_Peaks_Information TEXT,
	_55Kb_Upstream_Peaks_Information TEXT,
	_54Kb_Upstream_Peaks_Information TEXT,
	_53Kb_Upstream_Peaks_Information TEXT,
	_52Kb_Upstream_Peaks_Information TEXT,
	_51Kb_Upstream_Peaks_Information TEXT,
	_50Kb_Upstream_Peaks_Information TEXT,
	_49Kb_Upstream_Peaks_Information TEXT,
	_48Kb_Upstream_Peaks_Information TEXT,
	_47Kb_Upstream_Peaks_Information TEXT,
	_46Kb_Upstream_Peaks_Information TEXT,
	_45Kb_Upstream_Peaks_Information TEXT,
	_44Kb_Upstream_Peaks_Information TEXT,
	_43Kb_Upstream_Peaks_Information TEXT,
	_42Kb_Upstream_Peaks_Information TEXT,
	_41Kb_Upstream_Peaks_Information TEXT,
	_40Kb_Upstream_Peaks_Information TEXT,
	_39Kb_Upstream_Peaks_Information TEXT,
	_38Kb_Upstream_Peaks_Information TEXT,
	_37Kb_Upstream_Peaks_Information TEXT,
	_36Kb_Upstream_Peaks_Information TEXT,
	_35Kb_Upstream_Peaks_Information TEXT,
	_34Kb_Upstream_Peaks_Information TEXT,
	_33Kb_Upstream_Peaks_Information TEXT,
	_32Kb_Upstream_Peaks_Information TEXT,
	_31Kb_Upstream_Peaks_Information TEXT,
	_30Kb_Upstream_Peaks_Information TEXT,
	_29Kb_Upstream_Peaks_Information TEXT,
	_28Kb_Upstream_Peaks_Information TEXT,
	_27Kb_Upstream_Peaks_Information TEXT,
	_26Kb_Upstream_Peaks_Information TEXT,
	_25Kb_Upstream_Peaks_Information TEXT,
	_24Kb_Upstream_Peaks_Information TEXT,
	_23Kb_Upstream_Peaks_Information TEXT,
	_22Kb_Upstream_Peaks_Information TEXT,
	_21Kb_Upstream_Peaks_Information TEXT,
	_20Kb_Upstream_Peaks_Information TEXT,
	_19Kb_Upstream_Peaks_Information TEXT,
	_18Kb_Upstream_Peaks_Information TEXT,
	_17Kb_Upstream_Peaks_Information TEXT,
	_16Kb_Upstream_Peaks_Information TEXT,
	_15Kb_Upstream_Peaks_Information TEXT,
	_14Kb_Upstream_Peaks_Information TEXT,
	_13Kb_Upstream_Peaks_Information TEXT,
	_12Kb_Upstream_Peaks_Information TEXT,
	_11Kb_Upstream_Peaks_Information TEXT,
	_10Kb_Upstream_Peaks_Information TEXT,
	_9Kb_Upstream_Peaks_Information TEXT,
	_8Kb_Upstream_Peaks_Information TEXT,
	_7Kb_Upstream_Peaks_Information TEXT,
	_6Kb_Upstream_Peaks_Information TEXT,
	_5Kb_Upstream_Peaks_Information TEXT,
	_4Kb_Upstream_Peaks_Information TEXT,
	_3Kb_Upstream_Peaks_Information TEXT,
	_2Kb_Upstream_Peaks_Information TEXT,
	_1Kb_Upstream_Peaks_Information TEXT
);
CREATE TABLE transcript_annotation (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_5Prime_UTR_Peaks_Information TEXT,
	_Exons_Peaks_Information TEXT,
	_Introns_Peaks_Information TEXT,
	_3Prime_UTR_Peaks_Information TEXT
);
CREATE TABLE gene_body_annotation (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_Gene_Body_0_to_10_Peaks_Information TEXT,
	_Gene_Body_10_to_20_Peaks_Information TEXT,
	_Gene_Body_20_to_30_Peaks_Information TEXT,
	_Gene_Body_30_to_40_Peaks_Information TEXT,
	_Gene_Body_40_to_50_Peaks_Information TEXT,
	_Gene_Body_50_to_60_Peaks_Information TEXT,
	_Gene_Body_60_to_70_Peaks_Information TEXT,
	_Gene_Body_70_to_80_Peaks_Information TEXT,
	_Gene_Body_80_to_90_Peaks_Information TEXT,
	_Gene_Body_90_to_100_Peaks_Information TEXT
);
CREATE TABLE downstream_annotation (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome_id INTEGER NOT NULL REFERENCES available_genomes(id) ON UPDATE CASCADE,
	name INTEGER NOT NULL REFERENCES experiments(id) ON DELETE CASCADE,
	gene INTEGER NOT NULL REFERENCES transcript(id) ON DELETE CASCADE,
	_1Kb_Downstream_Peaks_Information TEXT,
	_2Kb_Downstream_Peaks_Information TEXT,
	_3Kb_Downstream_Peaks_Information TEXT,
	_4Kb_Downstream_Peaks_Information TEXT,
	_5Kb_Downstream_Peaks_Information TEXT,
	_6Kb_Downstream_Peaks_Information TEXT,
	_7Kb_Downstream_Peaks_Information TEXT,
	_8Kb_Downstream_Peaks_Information TEXT,
	_9Kb_Downstream_Peaks_Information TEXT,
	_10Kb_Downstream_Peaks_Information TEXT,
	_11Kb_Downstream_Peaks_Information TEXT,
	_12Kb_Downstream_Peaks_Information TEXT,
	_13Kb_Downstream_Peaks_Information TEXT,
	_14Kb_Downstream_Peaks_Information TEXT,
	_15Kb_Downstream_Peaks_Information TEXT,
	_16Kb_Downstream_Peaks_Information TEXT,
	_17Kb_Downstream_Peaks_Information TEXT,
	_18Kb_Downstream_Peaks_Information TEXT,
	_19Kb_Downstream_Peaks_Information TEXT,
	_20Kb_Downstream_Peaks_Information TEXT,
	_21Kb_Downstream_Peaks_Information TEXT,
	_22Kb_Downstream_Peaks_Information TEXT,
	_23Kb_Downstream_Peaks_Information TEXT,
	_24Kb_Downstream_Peaks_Information TEXT,
	_25Kb_Downstream_Peaks_Information TEXT,
	_26Kb_Downstream_Peaks_Information TEXT,
	_27Kb_Downstream_Peaks_Information TEXT,
	_28Kb_Downstream_Peaks_Information TEXT,
	_29Kb_Downstream_Peaks_Information TEXT,
	_30Kb_Downstream_Peaks_Information TEXT,
	_31Kb_Downstream_Peaks_Information TEXT,
	_32Kb_Downstream_Peaks_Information TEXT,
	_33Kb_Downstream_Peaks_Information TEXT,
	_34Kb_Downstream_Peaks_Information TEXT,
	_35Kb_Downstream_Peaks_Information TEXT,
	_36Kb_Downstream_Peaks_Information TEXT,
	_37Kb_Downstream_Peaks_Information TEXT,
	_38Kb_Downstream_Peaks_Information TEXT,
	_39Kb_Downstream_Peaks_Information TEXT,
	_40Kb_Downstream_Peaks_Information TEXT,
	_41Kb_Downstream_Peaks_Information TEXT,
	_42Kb_Downstream_Peaks_Information TEXT,
	_43Kb_Downstream_Peaks_Information TEXT,
	_44Kb_Downstream_Peaks_Information TEXT,
	_45Kb_Downstream_Peaks_Information TEXT,
	_46Kb_Downstream_Peaks_Information TEXT,
	_47Kb_Downstream_Peaks_Information TEXT,
	_48Kb_Downstream_Peaks_Information TEXT,
	_49Kb_Downstream_Peaks_Information TEXT,
	_50Kb_Downstream_Peaks_Information TEXT,
	_51Kb_Downstream_Peaks_Information TEXT,
	_52Kb_Downstream_Peaks_Information TEXT,
	_53Kb_Downstream_Peaks_Information TEXT,
	_54Kb_Downstream_Peaks_Information TEXT,
	_55Kb_Downstream_Peaks_Information TEXT,
	_56Kb_Downstream_Peaks_Information TEXT,
	_57Kb_Downstream_Peaks_Information TEXT,
	_58Kb_Downstream_Peaks_Information TEXT,
	_59Kb_Downstream_Peaks_Information TEXT,
	_60Kb_Downstream_Peaks_Information TEXT,
	_61Kb_Downstream_Peaks_Information TEXT,
	_62Kb_Downstream_Peaks_Information TEXT,
	_63Kb_Downstream_Peaks_Information TEXT,
	_64Kb_Downstream_Peaks_Information TEXT,
	_65Kb_Downstream_Peaks_Information TEXT,
	_66Kb_Downstream_Peaks_Information TEXT,
	_67Kb_Downstream_Peaks_Information TEXT,
	_68Kb_Downstream_Peaks_Information TEXT,
	_69Kb_Downstream_Peaks_Information TEXT,
	_70Kb_Downstream_Peaks_Information TEXT,
	_71Kb_Downstream_Peaks_Information TEXT,
	_72Kb_Downstream_Peaks_Information TEXT,
	_73Kb_Downstream_Peaks_Information TEXT,
	_74Kb_Downstream_Peaks_Information TEXT,
	_75Kb_Downstream_Peaks_Information TEXT,
	_76Kb_Downstream_Peaks_Information TEXT,
	_77Kb_Downstream_Peaks_Information TEXT,
	_78Kb_Downstream_Peaks_Information TEXT,
	_79Kb_Downstream_Peaks_Information TEXT,
	_80Kb_Downstream_Peaks_Information TEXT,
	_81Kb_Downstream_Peaks_Information TEXT,
	_82Kb_Downstream_Peaks_Information TEXT,
	_83Kb_Downstream_Peaks_Information TEXT,
	_84Kb_Downstream_Peaks_Information TEXT,
	_85Kb_Downstream_Peaks_Information TEXT,
	_86Kb_Downstream_Peaks_Information TEXT,
	_87Kb_Downstream_Peaks_Information TEXT,
	_88Kb_Downstream_Peaks_Information TEXT,
	_89Kb_Downstream_Peaks_Information TEXT,
	_90Kb_Downstream_Peaks_Information TEXT,
	_91Kb_Downstream_Peaks_Information TEXT,
	_92Kb_Downstream_Peaks_Information TEXT,
	_93Kb_Downstream_Peaks_Information TEXT,
	_94Kb_Downstream_Peaks_Information TEXT,
	_95Kb_Downstream_Peaks_Information TEXT,
	_96Kb_Downstream_Peaks_Information TEXT,
	_97Kb_Downstream_Peaks_Information TEXT,
	_98Kb_Downstream_Peaks_Information TEXT,
	_99Kb_Downstream_Peaks_Information TEXT,
	_100Kb_Downstream_Peaks_Information TEXT
);

CREATE TABLE available_genomes (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genome TEXT NOT NULL,
	_100Kb_Upstream_Peaks_File TEXT NOT NULL,
	_99Kb_Upstream_Peaks_File TEXT NOT NULL,
	_98Kb_Upstream_Peaks_File TEXT NOT NULL,
	_97Kb_Upstream_Peaks_File TEXT NOT NULL,
	_96Kb_Upstream_Peaks_File TEXT NOT NULL,
	_95Kb_Upstream_Peaks_File TEXT NOT NULL,
	_94Kb_Upstream_Peaks_File TEXT NOT NULL,
	_93Kb_Upstream_Peaks_File TEXT NOT NULL,
	_92Kb_Upstream_Peaks_File TEXT NOT NULL,
	_91Kb_Upstream_Peaks_File TEXT NOT NULL,
	_90Kb_Upstream_Peaks_File TEXT NOT NULL,
	_89Kb_Upstream_Peaks_File TEXT NOT NULL,
	_88Kb_Upstream_Peaks_File TEXT NOT NULL,
	_87Kb_Upstream_Peaks_File TEXT NOT NULL,
	_86Kb_Upstream_Peaks_File TEXT NOT NULL,
	_85Kb_Upstream_Peaks_File TEXT NOT NULL,
	_84Kb_Upstream_Peaks_File TEXT NOT NULL,
	_83Kb_Upstream_Peaks_File TEXT NOT NULL,
	_82Kb_Upstream_Peaks_File TEXT NOT NULL,
	_81Kb_Upstream_Peaks_File TEXT NOT NULL,
	_80Kb_Upstream_Peaks_File TEXT NOT NULL,
	_79Kb_Upstream_Peaks_File TEXT NOT NULL,
	_78Kb_Upstream_Peaks_File TEXT NOT NULL,
	_77Kb_Upstream_Peaks_File TEXT NOT NULL,
	_76Kb_Upstream_Peaks_File TEXT NOT NULL,
	_75Kb_Upstream_Peaks_File TEXT NOT NULL,
	_74Kb_Upstream_Peaks_File TEXT NOT NULL,
	_73Kb_Upstream_Peaks_File TEXT NOT NULL,
	_72Kb_Upstream_Peaks_File TEXT NOT NULL,
	_71Kb_Upstream_Peaks_File TEXT NOT NULL,
	_70Kb_Upstream_Peaks_File TEXT NOT NULL,
	_69Kb_Upstream_Peaks_File TEXT NOT NULL,
	_68Kb_Upstream_Peaks_File TEXT NOT NULL,
	_67Kb_Upstream_Peaks_File TEXT NOT NULL,
	_66Kb_Upstream_Peaks_File TEXT NOT NULL,
	_65Kb_Upstream_Peaks_File TEXT NOT NULL,
	_64Kb_Upstream_Peaks_File TEXT NOT NULL,
	_63Kb_Upstream_Peaks_File TEXT NOT NULL,
	_62Kb_Upstream_Peaks_File TEXT NOT NULL,
	_61Kb_Upstream_Peaks_File TEXT NOT NULL,
	_60Kb_Upstream_Peaks_File TEXT NOT NULL,
	_59Kb_Upstream_Peaks_File TEXT NOT NULL,
	_58Kb_Upstream_Peaks_File TEXT NOT NULL,
	_57Kb_Upstream_Peaks_File TEXT NOT NULL,
	_56Kb_Upstream_Peaks_File TEXT NOT NULL,
	_55Kb_Upstream_Peaks_File TEXT NOT NULL,
	_54Kb_Upstream_Peaks_File TEXT NOT NULL,
	_53Kb_Upstream_Peaks_File TEXT NOT NULL,
	_52Kb_Upstream_Peaks_File TEXT NOT NULL,
	_51Kb_Upstream_Peaks_File TEXT NOT NULL,
	_50Kb_Upstream_Peaks_File TEXT NOT NULL,
	_49Kb_Upstream_Peaks_File TEXT NOT NULL,
	_48Kb_Upstream_Peaks_File TEXT NOT NULL,
	_47Kb_Upstream_Peaks_File TEXT NOT NULL,
	_46Kb_Upstream_Peaks_File TEXT NOT NULL,
	_45Kb_Upstream_Peaks_File TEXT NOT NULL,
	_44Kb_Upstream_Peaks_File TEXT NOT NULL,
	_43Kb_Upstream_Peaks_File TEXT NOT NULL,
	_42Kb_Upstream_Peaks_File TEXT NOT NULL,
	_41Kb_Upstream_Peaks_File TEXT NOT NULL,
	_40Kb_Upstream_Peaks_File TEXT NOT NULL,
	_39Kb_Upstream_Peaks_File TEXT NOT NULL,
	_38Kb_Upstream_Peaks_File TEXT NOT NULL,
	_37Kb_Upstream_Peaks_File TEXT NOT NULL,
	_36Kb_Upstream_Peaks_File TEXT NOT NULL,
	_35Kb_Upstream_Peaks_File TEXT NOT NULL,
	_34Kb_Upstream_Peaks_File TEXT NOT NULL,
	_33Kb_Upstream_Peaks_File TEXT NOT NULL,
	_32Kb_Upstream_Peaks_File TEXT NOT NULL,
	_31Kb_Upstream_Peaks_File TEXT NOT NULL,
	_30Kb_Upstream_Peaks_File TEXT NOT NULL,
	_29Kb_Upstream_Peaks_File TEXT NOT NULL,
	_28Kb_Upstream_Peaks_File TEXT NOT NULL,
	_27Kb_Upstream_Peaks_File TEXT NOT NULL,
	_26Kb_Upstream_Peaks_File TEXT NOT NULL,
	_25Kb_Upstream_Peaks_File TEXT NOT NULL,
	_24Kb_Upstream_Peaks_File TEXT NOT NULL,
	_23Kb_Upstream_Peaks_File TEXT NOT NULL,
	_22Kb_Upstream_Peaks_File TEXT NOT NULL,
	_21Kb_Upstream_Peaks_File TEXT NOT NULL,
	_20Kb_Upstream_Peaks_File TEXT NOT NULL,
	_19Kb_Upstream_Peaks_File TEXT NOT NULL,
	_18Kb_Upstream_Peaks_File TEXT NOT NULL,
	_17Kb_Upstream_Peaks_File TEXT NOT NULL,
	_16Kb_Upstream_Peaks_File TEXT NOT NULL,
	_15Kb_Upstream_Peaks_File TEXT NOT NULL,
	_14Kb_Upstream_Peaks_File TEXT NOT NULL,
	_13Kb_Upstream_Peaks_File TEXT NOT NULL,
	_12Kb_Upstream_Peaks_File TEXT NOT NULL,
	_11Kb_Upstream_Peaks_File TEXT NOT NULL,
	_10Kb_Upstream_Peaks_File TEXT NOT NULL,
	_9Kb_Upstream_Peaks_File TEXT NOT NULL,
	_8Kb_Upstream_Peaks_File TEXT NOT NULL,
	_7Kb_Upstream_Peaks_File TEXT NOT NULL,
	_6Kb_Upstream_Peaks_File TEXT NOT NULL,
	_5Kb_Upstream_Peaks_File TEXT NOT NULL,
	_4Kb_Upstream_Peaks_File TEXT NOT NULL,
	_3Kb_Upstream_Peaks_File TEXT NOT NULL,
	_2Kb_Upstream_Peaks_File TEXT NOT NULL,
	_1Kb_Upstream_Peaks_File TEXT NOT NULL,
	_5Prime_UTR_Peaks_File TEXT NOT NULL,
	_Exons_Peaks_File TEXT NOT NULL,
	_Introns_Peaks_File TEXT NOT NULL,
	_3Prime_UTR_Peaks_File TEXT NOT NULL,
	_Gene_Body_0_to_10_Peaks_File TEXT NOT NULL,
	_Gene_Body_10_to_20_Peaks_File TEXT NOT NULL,
	_Gene_Body_20_to_30_Peaks_File TEXT NOT NULL,
	_Gene_Body_30_to_40_Peaks_File TEXT NOT NULL,
	_Gene_Body_40_to_50_Peaks_File TEXT NOT NULL,
	_Gene_Body_50_to_60_Peaks_File TEXT NOT NULL,
	_Gene_Body_60_to_70_Peaks_File TEXT NOT NULL,
	_Gene_Body_70_to_80_Peaks_File TEXT NOT NULL,
	_Gene_Body_80_to_90_Peaks_File TEXT NOT NULL,
	_Gene_Body_90_to_100_Peaks_File TEXT NOT NULL,
	_1Kb_Downstream_Peaks_File TEXT NOT NULL,
	_2Kb_Downstream_Peaks_File TEXT NOT NULL,
	_3Kb_Downstream_Peaks_File TEXT NOT NULL,
	_4Kb_Downstream_Peaks_File TEXT NOT NULL,
	_5Kb_Downstream_Peaks_File TEXT NOT NULL,
	_6Kb_Downstream_Peaks_File TEXT NOT NULL,
	_7Kb_Downstream_Peaks_File TEXT NOT NULL,
	_8Kb_Downstream_Peaks_File TEXT NOT NULL,
	_9Kb_Downstream_Peaks_File TEXT NOT NULL,
	_10Kb_Downstream_Peaks_File TEXT NOT NULL,
	_11Kb_Downstream_Peaks_File TEXT NOT NULL,
	_12Kb_Downstream_Peaks_File TEXT NOT NULL,
	_13Kb_Downstream_Peaks_File TEXT NOT NULL,
	_14Kb_Downstream_Peaks_File TEXT NOT NULL,
	_15Kb_Downstream_Peaks_File TEXT NOT NULL,
	_16Kb_Downstream_Peaks_File TEXT NOT NULL,
	_17Kb_Downstream_Peaks_File TEXT NOT NULL,
	_18Kb_Downstream_Peaks_File TEXT NOT NULL,
	_19Kb_Downstream_Peaks_File TEXT NOT NULL,
	_20Kb_Downstream_Peaks_File TEXT NOT NULL,
	_21Kb_Downstream_Peaks_File TEXT NOT NULL,
	_22Kb_Downstream_Peaks_File TEXT NOT NULL,
	_23Kb_Downstream_Peaks_File TEXT NOT NULL,
	_24Kb_Downstream_Peaks_File TEXT NOT NULL,
	_25Kb_Downstream_Peaks_File TEXT NOT NULL,
	_26Kb_Downstream_Peaks_File TEXT NOT NULL,
	_27Kb_Downstream_Peaks_File TEXT NOT NULL,
	_28Kb_Downstream_Peaks_File TEXT NOT NULL,
	_29Kb_Downstream_Peaks_File TEXT NOT NULL,
	_30Kb_Downstream_Peaks_File TEXT NOT NULL,
	_31Kb_Downstream_Peaks_File TEXT NOT NULL,
	_32Kb_Downstream_Peaks_File TEXT NOT NULL,
	_33Kb_Downstream_Peaks_File TEXT NOT NULL,
	_34Kb_Downstream_Peaks_File TEXT NOT NULL,
	_35Kb_Downstream_Peaks_File TEXT NOT NULL,
	_36Kb_Downstream_Peaks_File TEXT NOT NULL,
	_37Kb_Downstream_Peaks_File TEXT NOT NULL,
	_38Kb_Downstream_Peaks_File TEXT NOT NULL,
	_39Kb_Downstream_Peaks_File TEXT NOT NULL,
	_40Kb_Downstream_Peaks_File TEXT NOT NULL,
	_41Kb_Downstream_Peaks_File TEXT NOT NULL,
	_42Kb_Downstream_Peaks_File TEXT NOT NULL,
	_43Kb_Downstream_Peaks_File TEXT NOT NULL,
	_44Kb_Downstream_Peaks_File TEXT NOT NULL,
	_45Kb_Downstream_Peaks_File TEXT NOT NULL,
	_46Kb_Downstream_Peaks_File TEXT NOT NULL,
	_47Kb_Downstream_Peaks_File TEXT NOT NULL,
	_48Kb_Downstream_Peaks_File TEXT NOT NULL,
	_49Kb_Downstream_Peaks_File TEXT NOT NULL,
	_50Kb_Downstream_Peaks_File TEXT NOT NULL,
	_51Kb_Downstream_Peaks_File TEXT NOT NULL,
	_52Kb_Downstream_Peaks_File TEXT NOT NULL,
	_53Kb_Downstream_Peaks_File TEXT NOT NULL,
	_54Kb_Downstream_Peaks_File TEXT NOT NULL,
	_55Kb_Downstream_Peaks_File TEXT NOT NULL,
	_56Kb_Downstream_Peaks_File TEXT NOT NULL,
	_57Kb_Downstream_Peaks_File TEXT NOT NULL,
	_58Kb_Downstream_Peaks_File TEXT NOT NULL,
	_59Kb_Downstream_Peaks_File TEXT NOT NULL,
	_60Kb_Downstream_Peaks_File TEXT NOT NULL,
	_61Kb_Downstream_Peaks_File TEXT NOT NULL,
	_62Kb_Downstream_Peaks_File TEXT NOT NULL,
	_63Kb_Downstream_Peaks_File TEXT NOT NULL,
	_64Kb_Downstream_Peaks_File TEXT NOT NULL,
	_65Kb_Downstream_Peaks_File TEXT NOT NULL,
	_66Kb_Downstream_Peaks_File TEXT NOT NULL,
	_67Kb_Downstream_Peaks_File TEXT NOT NULL,
	_68Kb_Downstream_Peaks_File TEXT NOT NULL,
	_69Kb_Downstream_Peaks_File TEXT NOT NULL,
	_70Kb_Downstream_Peaks_File TEXT NOT NULL,
	_71Kb_Downstream_Peaks_File TEXT NOT NULL,
	_72Kb_Downstream_Peaks_File TEXT NOT NULL,
	_73Kb_Downstream_Peaks_File TEXT NOT NULL,
	_74Kb_Downstream_Peaks_File TEXT NOT NULL,
	_75Kb_Downstream_Peaks_File TEXT NOT NULL,
	_76Kb_Downstream_Peaks_File TEXT NOT NULL,
	_77Kb_Downstream_Peaks_File TEXT NOT NULL,
	_78Kb_Downstream_Peaks_File TEXT NOT NULL,
	_79Kb_Downstream_Peaks_File TEXT NOT NULL,
	_80Kb_Downstream_Peaks_File TEXT NOT NULL,
	_81Kb_Downstream_Peaks_File TEXT NOT NULL,
	_82Kb_Downstream_Peaks_File TEXT NOT NULL,
	_83Kb_Downstream_Peaks_File TEXT NOT NULL,
	_84Kb_Downstream_Peaks_File TEXT NOT NULL,
	_85Kb_Downstream_Peaks_File TEXT NOT NULL,
	_86Kb_Downstream_Peaks_File TEXT NOT NULL,
	_87Kb_Downstream_Peaks_File TEXT NOT NULL,
	_88Kb_Downstream_Peaks_File TEXT NOT NULL,
	_89Kb_Downstream_Peaks_File TEXT NOT NULL,
	_90Kb_Downstream_Peaks_File TEXT NOT NULL,
	_91Kb_Downstream_Peaks_File TEXT NOT NULL,
	_92Kb_Downstream_Peaks_File TEXT NOT NULL,
	_93Kb_Downstream_Peaks_File TEXT NOT NULL,
	_94Kb_Downstream_Peaks_File TEXT NOT NULL,
	_95Kb_Downstream_Peaks_File TEXT NOT NULL,
	_96Kb_Downstream_Peaks_File TEXT NOT NULL,
	_97Kb_Downstream_Peaks_File TEXT NOT NULL,
	_98Kb_Downstream_Peaks_File TEXT NOT NULL,
	_99Kb_Downstream_Peaks_File TEXT NOT NULL,
	_100Kb_Downstream_Peaks_File TEXT NOT NULL,
	UNIQUE (genome, _100Kb_Upstream_Peaks_File, _99Kb_Upstream_Peaks_File, _98Kb_Upstream_Peaks_File, _97Kb_Upstream_Peaks_File, _96Kb_Upstream_Peaks_File, _95Kb_Upstream_Peaks_File, _94Kb_Upstream_Peaks_File, _93Kb_Upstream_Peaks_File, _92Kb_Upstream_Peaks_File, _91Kb_Upstream_Peaks_File, _90Kb_Upstream_Peaks_File, _89Kb_Upstream_Peaks_File, _88Kb_Upstream_Peaks_File, _87Kb_Upstream_Peaks_File, _86Kb_Upstream_Peaks_File, _85Kb_Upstream_Peaks_File, _84Kb_Upstream_Peaks_File, _83Kb_Upstream_Peaks_File, _82Kb_Upstream_Peaks_File, _81Kb_Upstream_Peaks_File, _80Kb_Upstream_Peaks_File, _79Kb_Upstream_Peaks_File, _78Kb_Upstream_Peaks_File, _77Kb_Upstream_Peaks_File, _76Kb_Upstream_Peaks_File, _75Kb_Upstream_Peaks_File, _74Kb_Upstream_Peaks_File, _73Kb_Upstream_Peaks_File, _72Kb_Upstream_Peaks_File, _71Kb_Upstream_Peaks_File, _70Kb_Upstream_Peaks_File, _69Kb_Upstream_Peaks_File, _68Kb_Upstream_Peaks_File, _67Kb_Upstream_Peaks_File, _66Kb_Upstream_Peaks_File, _65Kb_Upstream_Peaks_File, _64Kb_Upstream_Peaks_File, _63Kb_Upstream_Peaks_File, _62Kb_Upstream_Peaks_File, _61Kb_Upstream_Peaks_File, _60Kb_Upstream_Peaks_File, _59Kb_Upstream_Peaks_File, _58Kb_Upstream_Peaks_File, _57Kb_Upstream_Peaks_File, _56Kb_Upstream_Peaks_File, _55Kb_Upstream_Peaks_File, _54Kb_Upstream_Peaks_File, _53Kb_Upstream_Peaks_File, _52Kb_Upstream_Peaks_File, _51Kb_Upstream_Peaks_File, _50Kb_Upstream_Peaks_File, _49Kb_Upstream_Peaks_File, _48Kb_Upstream_Peaks_File, _47Kb_Upstream_Peaks_File, _46Kb_Upstream_Peaks_File, _45Kb_Upstream_Peaks_File, _44Kb_Upstream_Peaks_File, _43Kb_Upstream_Peaks_File, _42Kb_Upstream_Peaks_File, _41Kb_Upstream_Peaks_File, _40Kb_Upstream_Peaks_File, _39Kb_Upstream_Peaks_File, _38Kb_Upstream_Peaks_File, _37Kb_Upstream_Peaks_File, _36Kb_Upstream_Peaks_File, _35Kb_Upstream_Peaks_File, _34Kb_Upstream_Peaks_File, _33Kb_Upstream_Peaks_File, _32Kb_Upstream_Peaks_File, _31Kb_Upstream_Peaks_File, _30Kb_Upstream_Peaks_File, _29Kb_Upstream_Peaks_File, _28Kb_Upstream_Peaks_File, _27Kb_Upstream_Peaks_File, _26Kb_Upstream_Peaks_File, _25Kb_Upstream_Peaks_File, _24Kb_Upstream_Peaks_File, _23Kb_Upstream_Peaks_File, _22Kb_Upstream_Peaks_File, _21Kb_Upstream_Peaks_File, _20Kb_Upstream_Peaks_File, _19Kb_Upstream_Peaks_File, _18Kb_Upstream_Peaks_File, _17Kb_Upstream_Peaks_File, _16Kb_Upstream_Peaks_File, _15Kb_Upstream_Peaks_File, _14Kb_Upstream_Peaks_File, _13Kb_Upstream_Peaks_File, _12Kb_Upstream_Peaks_File, _11Kb_Upstream_Peaks_File, _10Kb_Upstream_Peaks_File, _9Kb_Upstream_Peaks_File, _8Kb_Upstream_Peaks_File, _7Kb_Upstream_Peaks_File, _6Kb_Upstream_Peaks_File, _5Kb_Upstream_Peaks_File, _4Kb_Upstream_Peaks_File, _3Kb_Upstream_Peaks_File, _2Kb_Upstream_Peaks_File, _1Kb_Upstream_Peaks_File, _5Prime_UTR_Peaks_File, _Exons_Peaks_File, _Introns_Peaks_File, _3Prime_UTR_Peaks_File, _1Kb_Downstream_Peaks_File, _2Kb_Downstream_Peaks_File, _3Kb_Downstream_Peaks_File, _4Kb_Downstream_Peaks_File, _5Kb_Downstream_Peaks_File, _6Kb_Downstream_Peaks_File, _7Kb_Downstream_Peaks_File, _8Kb_Downstream_Peaks_File, _9Kb_Downstream_Peaks_File, _10Kb_Downstream_Peaks_File, _11Kb_Downstream_Peaks_File, _12Kb_Downstream_Peaks_File, _13Kb_Downstream_Peaks_File, _14Kb_Downstream_Peaks_File, _15Kb_Downstream_Peaks_File, _16Kb_Downstream_Peaks_File, _17Kb_Downstream_Peaks_File, _18Kb_Downstream_Peaks_File, _19Kb_Downstream_Peaks_File, _20Kb_Downstream_Peaks_File, _21Kb_Downstream_Peaks_File, _22Kb_Downstream_Peaks_File, _23Kb_Downstream_Peaks_File, _24Kb_Downstream_Peaks_File, _25Kb_Downstream_Peaks_File, _26Kb_Downstream_Peaks_File, _27Kb_Downstream_Peaks_File, _28Kb_Downstream_Peaks_File, _29Kb_Downstream_Peaks_File, _30Kb_Downstream_Peaks_File, _31Kb_Downstream_Peaks_File, _32Kb_Downstream_Peaks_File, _33Kb_Downstream_Peaks_File, _34Kb_Downstream_Peaks_File, _35Kb_Downstream_Peaks_File, _36Kb_Downstream_Peaks_File, _37Kb_Downstream_Peaks_File, _38Kb_Downstream_Peaks_File, _39Kb_Downstream_Peaks_File, _40Kb_Downstream_Peaks_File, _41Kb_Downstream_Peaks_File, _42Kb_Downstream_Peaks_File, _43Kb_Downstream_Peaks_File, _44Kb_Downstream_Peaks_File, _45Kb_Downstream_Peaks_File, _46Kb_Downstream_Peaks_File, _47Kb_Downstream_Peaks_File, _48Kb_Downstream_Peaks_File, _49Kb_Downstream_Peaks_File, _50Kb_Downstream_Peaks_File, _51Kb_Downstream_Peaks_File, _52Kb_Downstream_Peaks_File, _53Kb_Downstream_Peaks_File, _54Kb_Downstream_Peaks_File, _55Kb_Downstream_Peaks_File, _56Kb_Downstream_Peaks_File, _57Kb_Downstream_Peaks_File, _58Kb_Downstream_Peaks_File, _59Kb_Downstream_Peaks_File, _60Kb_Downstream_Peaks_File, _61Kb_Downstream_Peaks_File, _62Kb_Downstream_Peaks_File, _63Kb_Downstream_Peaks_File, _64Kb_Downstream_Peaks_File, _65Kb_Downstream_Peaks_File, _66Kb_Downstream_Peaks_File, _67Kb_Downstream_Peaks_File, _68Kb_Downstream_Peaks_File, _69Kb_Downstream_Peaks_File, _70Kb_Downstream_Peaks_File, _71Kb_Downstream_Peaks_File, _72Kb_Downstream_Peaks_File, _73Kb_Downstream_Peaks_File, _74Kb_Downstream_Peaks_File, _75Kb_Downstream_Peaks_File, _76Kb_Downstream_Peaks_File, _77Kb_Downstream_Peaks_File, _78Kb_Downstream_Peaks_File, _79Kb_Downstream_Peaks_File, _80Kb_Downstream_Peaks_File, _81Kb_Downstream_Peaks_File, _82Kb_Downstream_Peaks_File, _83Kb_Downstream_Peaks_File, _84Kb_Downstream_Peaks_File, _85Kb_Downstream_Peaks_File, _86Kb_Downstream_Peaks_File, _87Kb_Downstream_Peaks_File, _88Kb_Downstream_Peaks_File, _89Kb_Downstream_Peaks_File, _90Kb_Downstream_Peaks_File, _91Kb_Downstream_Peaks_File, _92Kb_Downstream_Peaks_File, _93Kb_Downstream_Peaks_File, _94Kb_Downstream_Peaks_File, _95Kb_Downstream_Peaks_File, _96Kb_Downstream_Peaks_File, _97Kb_Downstream_Peaks_File, _98Kb_Downstream_Peaks_File, _99Kb_Downstream_Peaks_File, _100Kb_Downstream_Peaks_File) ON CONFLICT REPLACE
);
