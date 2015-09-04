from pyramid.view import view_config


@view_config(route_name='home', renderer='templates/page.mako')
def my_view(request):
    return {'project': 'kimochi-consumer'}
