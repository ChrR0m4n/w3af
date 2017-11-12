<scan-info target="{{ scan_target }}">
    {% for plugin_type in enabled_plugins %}
    <{{ plugin_type }}>
        {% for plugin_name in enabled_plugins[plugin_type] %}
            <plugin name="{{ plugin_name }}">
                {% if plugin_name in plugin_options[plugin_type] %}
                    {% for plugin_option in plugin_options[plugin_type][plugin_name] %}
                        <config parameter="{{ plugin_option.get_name() }}" value="{{ plugin_option.get_value_str() }}"/>
                    {% endfor %}
                {% endif %}
            </plugin>
        {% endfor %}
    {% endfor %}
</scan-info>