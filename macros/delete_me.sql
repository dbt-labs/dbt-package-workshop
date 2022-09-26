{% macro delete_me(text) %}
    {% if text %}
        delete this text: {{ text }} !! or ELSE!
    {% else %}
        have a nice day {{ target.user }}!
    {% endif %}
{% endmacro %}