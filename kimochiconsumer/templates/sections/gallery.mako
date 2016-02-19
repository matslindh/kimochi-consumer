<%page args="section" />

% if section['gallery']:
    <%include file="block_gallery.mako" args="gallery=section['gallery']" />
% endif

