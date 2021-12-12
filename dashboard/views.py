from django.shortcuts import render
from .models import *
from django.core.serializers.json import DjangoJSONEncoder
import json
from django.db.models import Count
# from itertools import groupby
from django.db.models import Sum


# Create your views here.
def base(request):
    map_region = WasteSegregationDetails.objects.values('region').annotate(Sum('wet_waste_before_segregation') , Sum('dry_waste_before_segregation'), Sum('hazardous_waste')  )
    line_region = WasteSegregationDetails.objects.values('coll_date').annotate(Sum('wet_waste_before_segregation') , Sum('dry_waste_before_segregation'), Sum('hazardous_waste')  )
    # data = WasteSegregationDetails.objects.values('region','wet_waste_before_segregation','dry_waste_before_segregation','hazardous_waste')
    # data=WasteSegregationDetails.objects.values('region','wet_waste_before_segregation','dry_waste_before_segregation','hazardous_waste').annotate(Count('region')).order_by()
    new_data = json.dumps(list(map_region), cls=DjangoJSONEncoder)
    date_new_data = json.dumps(list(line_region), cls=DjangoJSONEncoder)

    return render(request,"home.html",{'data':new_data,'date_data':date_new_data})