{% macro markup(column1,column2) %}

round((({{column1}} - {{column2}})/{{column2}}),2)

{% endmacro %}