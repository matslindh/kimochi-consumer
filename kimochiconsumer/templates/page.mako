<%inherit file="base.mako" />

% for section in page['sections']:
    % if section['type'] == 'text':
        <div class="page-section">
            ${section['content'] | n}
        </div>
    % elif section['type'] == 'gallery':
        <%include file="page_section_gallery.mako" args="section=section" />
    % else:
        <!-- unknown section type: ${section['type']} -->
    % endif
% endfor