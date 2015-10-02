<%page args="gallery" />

% for idx, image in enumerate(gallery['images']):
    ${'<div class="row">' if idx % 3 == 0 else '' | n}
    <div class="col-md-4" style="margin-bottom: 2.0em;">
        <a href="${request.route_url('gallery_image_view', gallery_id=gallery['id'], image_id=image['id'])}">
            % if '1:1' in image['variations']:
                <img src="${image['variations']['1:1']['270x270']}" alt="" />
            % else:
                <img src="${image['preview']['400x200']}" alt="" style="max-width: 300px; max-height: 300px;" />
            % endif
        </a>
    </div>
    ${'</div>' if idx % 3 == 2 else '' | n}
% endfor