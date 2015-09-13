<%page args="section" />

% for idx, image in enumerate(section['gallery']['images']):
    ${'<div class="row">' if idx % 3 == 0 else '' | n}
    <div> class="col-md-4" style="margin-bottom: 2.0em;">
        <a href="${request.route_url('gallery_image_view', gallery_id=section['gallery']['id'], image_id=image['id'])}">
            <img src="${image['preview']['400x200']}" alt="" style="max-width: 300px;" />
        </a>
    </div>
    ${'</div>' if idx % 3 == 2 else '' | n}
% endfor

