<%page args="section" />

% for inner_section in section['sections']:
    <div>
        <%include file="${inner_section['type']}.mako" args="section=inner_section" />
    </div>
% endfor