{% macro is_positive(column_name) %}
    {{ column_name }} > 0
{% endmacro %}