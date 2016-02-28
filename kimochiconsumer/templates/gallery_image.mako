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

    <div class="image-navigation-bar">
        <a href="${request.current_route_url(_route_name='gallery_view')}" class="back">Back to &laquo;${gallery['name']}&raquo;</a>

        % if previous:
            <a href="${request.current_route_url(image_id=previous['id'])}" class="previous" id="previous-link">
        % endif

        <span class="glyphicon glyphicon-chevron-left"></span> Previous${'</a>' if previous else '' | n}

        /

        % if next:
            <a href="${request.current_route_url(image_id=next['id'])}" class="next" id="next-link">
        % endif

        Next <span class="glyphicon glyphicon-chevron-right"></span>

        % if next:
            </a>
        % endif
    </div>
</section>

<hr>

<%include file="sections/block_gallery.mako" args="gallery=gallery" />

<script type="text/javascript">
    $(document).keydown(function(e) {
        var el = null;

        switch(e.which)
        {
            case 37: // left
                el = document.getElementById("previous-link");
                break;

            case 39: // right
                el = document.getElementById("next-link")
                break;
        }

        if (el)
        {
            el.click();
            e.preventDefault();
        }

        return;
    });
</script>