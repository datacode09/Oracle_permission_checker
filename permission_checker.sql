SELECT
    p.owner,
    p.object_name AS procedure_name,
    tp.grantee,
    tp.privilege
FROM
    all_procedures p
JOIN
    all_tab_privs tp
    ON (p.owner = tp.owner AND p.object_name = tp.table_name)
WHERE
    p.object_type = 'PROCEDURE'
    AND p.owner = 'SCHEMA_NAME'
    AND p.object_name = 'PROCEDURE_NAME';
