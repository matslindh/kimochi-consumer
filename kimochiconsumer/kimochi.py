import requests

class Kimochi:
    def __init__(self, url, api_key, site_key = None):
        if not url.endswith('/'):
            url += '/'

        if site_key:
            self.url = url + 'sites/' + site_key + '/'

        self.api_key = api_key

    def page(self, page_id):
        return self._get('pages/' + str(page_id))

    def image(self, image_id):
        return self._get('images/' + str(image_id))

    def gallery(self, gallery_id):
        return self._get('galleries/' + str(gallery_id))

    def _get(self, path):
        r = requests.get(self.url + path, {'api_key': self.api_key})
        return r.json()
