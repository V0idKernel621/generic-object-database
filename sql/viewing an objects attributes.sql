SELECT o.name, a.name, ov.text_value
FROM object o
JOIN object_value ov
    ON ov.object_id = o.id
JOIN attribute a
    ON a.id = ov.attribute_id;

