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

% if related:
    <hr>

    <div class="related-images">
        <%
            aligns = ['left', 'center', 'right']
        %>
        % for idx, related_image in enumerate(related):
            ${'<div class="row block-gallery-list" style="margin-bottom: 2.0em;">' if idx % 3 == 0 else '' | n}
            <div class="col-md-4" style="text-align: ${aligns[idx%3]}">
                <%
                    image_url = request.route_url('gallery_image_view', gallery_id=1, image_id=related_image['id'])
                %>
                <a href="${image_url}" ${'class="active"' if image_url == request.current_route_url() else '' | n}>
                    % if '1:1' in image['variations']:
                        <img src="${related_image['variations']['1:1']['270x270']}" alt="" class="gallery-image-thumb-quadratic" />
                    % else:
                        <img src="${related_image['preview']['400x200']}" alt="" class="gallery-image-thumb-non-quadratic" />
                    % endif
                </a>
            </div>
            ${'</div>' if idx % 3 == 2 else '' | n}
        % endfor
    </div>
% endif

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