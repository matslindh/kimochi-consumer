from pyramid.config import Configurator
import kimochiconsumer.kimochi


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    def get_kimochi(request):
        return kimochi.Kimochi(settings['kimochi.url'],
                               settings['kimochi.api_key'],
                               site_key=settings['kimochi.site_key'])

    config = Configurator(settings=settings)
    config.include('pyramid_mako')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('page', '/')
    config.add_route('page_view', '/pages/{page_id}/{slug}')
    config.add_route('gallery_view', '/gallery/{gallery_id}')
    config.add_route('gallery_image_view', '/gallery/{gallery_id}/image/{image_id}')
    config.add_request_method(get_kimochi, 'kimochi', reify=True)
    config.scan()
    return config.make_wsgi_app()
