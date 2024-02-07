{# 
{% for i in range(10) %}
    select {{ i }} as number {% if not loop.last %} union all {% endif %}
{% endfor %}



{% set my_var1_string = 'Olá!' %}
{% set my_var2_string = 'Aqui é Jinja!' %}
{% set my_var_number = 100 %}

{{ my_var1_string }} {{ my_var2_string }} I quero Jinja por {{ my_var_number }} anos!




{% set my_animals = ['lemur','wolf','panther','tardigrade'] %}
{{ my_animals[0] }}
{% for animals in my_animals %}
    My favorite animal is {{ animals }}
{% endfor %}




{% set temperature = 75 %}
{% if temperature < 65 %}
    Time for a Cappuccino!
{% else %}
    Time for Cold Brew!
{% endif%}




{%- set foods = ['carrot','hotdog','cucumber','bell pepper'] -%}
{% for food in foods %}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetable' -%}
    {%- endif -%}

    The humble {{ food }} is my favorite {{ food_type }}
{% endfor%}    


#}
{% set websters_dict = {
    "word":"data",
    "speech_part":"noun",
    "definition":"If you know you know"
    }
%}

{{ websters_dict['word'] }} ({{ websters_dict['speech_part'] }}): defined as "{{ websters_dict['definition'] }}"