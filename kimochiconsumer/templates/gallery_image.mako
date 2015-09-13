<%inherit file="base.mako" />

<section class="gallery-image">
    % if image['title']:
        <h1>${image['title']}</h1>
    % endif

    % if image['description']:
        <p>
            ${image['description']}
        </p>
    % endif

    <img src="${image['source']['1280']}" alt="${image['title']}" style="max-width: 100%;" />
</section>

<hr>

<%include file="block_gallery.mako" args="gallery=gallery" />