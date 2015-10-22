<%inherit file="base.mako" />

<h1>
    ${gallery['name']}
</h1>

<%include file="block_gallery.mako" args="gallery=gallery" />