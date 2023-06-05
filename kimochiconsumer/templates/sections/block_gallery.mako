<%page args="gallery" />
<%
    aligns = ['left', 'center', 'right']
%>
% for idx, image in enumerate(gallery['images']):
    ${'<div class="row block-gallery-list" style="margin-bottom: 2.0em;">' if idx % 3 == 0 else '' | n}
    <div class="col-md-4" style="text-align: ${aligns[idx%3]}">
        <%
            image_url = request.route_url('gallery_image_view', gallery_id=gallery['id'], image_id=image['id'])
        %>
        <a href="${image_url}" ${'class="active"' if image_url == request.current_route_url() else '' | n}>
            % if '1:1' in image['variations']:
                <img src="${image['variations']['1:1']['540x540']}" alt="" class="gallery-image-thumb-quadratic img-responsive" />
            % else:
                <img src="${image['preview']['800x400']}" alt="" class="gallery-image-thumb-non-quadratic img-responsive" />
            % endif
        </a>
    </div>
    ${'</div>' if idx % 3 == 2 else '' | n}
% endfor