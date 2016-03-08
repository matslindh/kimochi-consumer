<%inherit file="base.mako" />

<h1>
    ${gallery['name']}
</h1>

<%include file="sections/block_gallery.mako" args="gallery=gallery" />