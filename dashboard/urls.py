from django.conf.urls import url
from . import views
from django.conf import settings
from django.conf.urls.static import static



urlpatterns = [
    url(r'^$',views.base,name=''),
    # url(r'^forms/$',views.form,name='forms'),
    # url(r'^childregter/$',views.childregter,name='childregter'),
    # url(r'^login/$',views.login,name='login'),
    # url(r'^register/$',views.register,name='register'),
    # url(r'^breastfeed/$',views.breastfeed,name='breastfeed'),
    # url(r'^brestfed/$',views.brestfed,name='brestfed'),
    # url(r'^pre_delivery/$',views.pre_delivery,name='pre_delivery'),
    # url(r'^follow_up/$',views.follow_up,name='follow_up'),
    # url(r'^home_visit/$',views.home_visit,name='home_visit'),
    # url(r'^immunization/$',views.immunization,name='immunization'),
    # url(r'^sixtothreeyear/$',views.sixtothreeyear,name='sixtothreeyear'),
    # url(r'^service/$',views.service,name=''),
    # url(r'^zerotosixmonth/$',views.zerotosixmonth,name='zerotosixmonth'),

]