{#
{% set dbt_user = 'dbt-user@' %}
{% set dbt_target = target.project %}
{% set dbt_domain = '.iam.gserviceaccount.com' %}

{% macro grant_select(schema=target.schema,roles='roles/bigquery.admin', user='dbt-user@jaffleshop-413020.iam.gserviceaccount.com') %}

    {% set query %}
        grant `{{roles}}` on schema `{{ schema }}` to {{ user }};
    {% endset %}
    
    {% do run_query(query) %}

{% endmacro %}
#}