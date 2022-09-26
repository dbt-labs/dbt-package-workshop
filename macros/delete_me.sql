{% macro delete_me(text) %}
    {% if text %}
        delete this text: {{ text }} !! or ELSE!
    {% endif %}
{% endmacro %}