<%inherit file="base.mako" />

% for section in page['sections']:
    <div class="page-section">
        <%include file="sections/${section['type']}.mako" args="section=section" />
    </div>
% endfor