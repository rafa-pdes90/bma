from plat_eventos.settings import *


DEBUG=True

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'melhorqueofb',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': 'melhorqueofb_db',
        'PORT': '3306',
    }
}
