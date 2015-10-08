<%inherit file="base.mako" />

% for section in page['sections']:
    <div class="page-section">
        % if section['type'] == 'text':
                ${section['content'] | n}
        % elif section['type'] == 'gallery':
            <%include file="page_section_gallery.mako" args="section=section" />
        % else:
            <!-- unknown section type: ${section['type']} -->
        % endif
    </div>
% endfor