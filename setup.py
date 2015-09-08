import os

from setuptools import setup, find_packages

requires = [
    'pyramid',
    'pyramid_debugtoolbar',
    'pyramid_mako',
    'requests',
    'waitress',
    ]

setup(name='kimochi-consumer',
      version='0.0',
      description='kimochi-consumer',
      long_description="Example content consumer for Kimochi.",
      classifiers=[
        "Programming Language :: Python",
        "Framework :: Pyramid",
        "Topic :: Internet :: WWW/HTTP",
        "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
        ],
      author='',
      author_email='',
      url='',
      keywords='web pyramid pylons',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=False,
      install_requires=requires,
      tests_require=requires,
      test_suite="kimochiconsumer",
      entry_points="""\
      [paste.app_factory]
      main = kimochiconsumer:main
      """,
      )
