from django.urls import path
from .views import *
from . import views

home_patterns = ([
    path('', views.Index, name='home'),
   
], 'home')

