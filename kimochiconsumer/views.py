from pyramid.view import view_config

from pyramid.httpexceptions import (
    HTTPNotFound,
)

@view_config(route_name='page', renderer='templates/page.mako')
@view_config(route_name='page_view', renderer='templates/page.mako')
def page_view(request):
    if 'page_id' in request.matchdict:
        data = request.kimochi.page(request.matchdict['page_id'])
    else:
        data = request.kimochi.page('index')

    return data

@view_config(route_name='gallery_view', renderer='templates/gallery.mako')
def gallery_view(request):
    data = request.kimochi.gallery(request.matchdict['gallery_id'])

    if 'gallery' not in data or not data['gallery']:
        raise HTTPNotFound

    return data

@view_config(route_name='gallery_image_view', renderer='templates/gallery_image.mako')
def gallery_image_view(request):
    data = request.kimochi.gallery_image(request.matchdict['gallery_id'], request.matchdict['image_id'])

    if 'gallery' not in data or not data['gallery']:
        raise HTTPNotFound

    return data
