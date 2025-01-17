SELECT 
    forbes_names.Person,
    forbes_names.ID,
	forbes_names.gender,
    forbes_names.Country_of_residence,
    forbes_2024_01.table_rank_2024_01,
    forbes_2024_02.table_rank_2024_02,
    forbes_2024_03.table_rank_2024_03,
    forbes_2024_04.table_rank_2024_04,
    forbes_2024_05.table_rank_2024_05,
    forbes_2024_06.table_rank_2024_06,
    forbes_2024_07.table_rank_2024_07,
    forbes_2024_08.table_rank_2024_08,
    forbes_2024_09.table_rank_2024_09,
    forbes_2024_10.table_rank_2024_10,
	forbes_2024_11.table_rank_2024_11,
	forbes_2024_12.table_rank_2024_12
FROM
    forbes_names
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
	LEFT JOIN forbes_2024_11 ON forbes_names.ID = forbes_2024_11.USER_ID
	LEFT JOIN forbes_2024_12 ON forbes_names.ID = forbes_2024_12.USER_ID