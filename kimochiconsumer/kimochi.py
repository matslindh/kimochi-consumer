import requests


class Kimochi:
    def __init__(self, url, api_key, site_key=None):
        if not url.endswith('/'):
            url += '/'

        if site_key:
            url = url + 'sites/' + site_key + '/'

        self.site_key = site_key
        self.url = url
        self.api_key = api_key

    def page(self, page_id):
        return self._get('pages/' + str(page_id))

    def image(self, image_id):
        return self._get('images/' + str(image_id))

    def gallery(self, gallery_id):
        return self._get('galleries/' + str(gallery_id))

    def gallery_image(self, gallery_id, image_id):
        return self._get('galleries/' + str(gallery_id) + '/image/' + str(image_id))

    def _get(self, path):
        url = self.url + path
        r = requests.get(url, {'api_key': self.api_key})

        try:
            return r.json()
        except:
            print(url + '?api_key=' + self.api_key)
            print(r.content)

        return None
