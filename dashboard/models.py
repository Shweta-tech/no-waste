from django.db import models
# Create your models here.
class EmployeeDetails(models.Model):
    adminward = models.CharField(max_length=50)
    councillorward = models.CharField(max_length=100)
    region = models.CharField(max_length=100)
    emp_category = models.CharField(max_length=100)
    emp_name = models.CharField(max_length=100)
    emp_mobile = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'employee_details'
class Region(models.Model):
    geom = models.TextField(blank=True, null=True)  # This field type is a guess.
    name = models.CharField(db_column='Name', max_length=100, blank=True, null=True)  # Field name made lowercase.
    descriptio = models.CharField(max_length=100, blank=True, null=True)
    timestamp = models.CharField(max_length=100, blank=True, null=True)
    begin = models.CharField(max_length=100, blank=True, null=True)
    end = models.CharField(max_length=100, blank=True, null=True)
    altitudemo = models.CharField(db_column='altitudeMo', max_length=100, blank=True, null=True)  # Field name made lowercase.
    tessellate = models.IntegerField(blank=True, null=True)
    extrude = models.IntegerField(blank=True, null=True)
    visibility = models.IntegerField(blank=True, null=True)
    draworder = models.CharField(db_column='drawOrder', max_length=100, blank=True, null=True)  # Field name made lowercase.
    icon = models.CharField(max_length=100, blank=True, null=True)
    region = models.CharField(max_length=100, blank=True, null=True)
    ward = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'region'

class OsmBuildings29Oct21(models.Model):
    geom = models.TextField()  # This field type is a guess.
    fid = models.DecimalField(max_digits=65535, decimal_places=65535)
    osm_id = models.DecimalField(max_digits=65535, decimal_places=65535)
    addrstreet = models.CharField(max_length=200, blank=True, null=True)
    building = models.CharField(max_length=80, blank=True, null=True)
    name = models.CharField(max_length=80, blank=True, null=True)
    num_flats = models.BigIntegerField(blank=True, null=True)
    wings = models.BigIntegerField(blank=True, null=True)
    region = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'osm_buildings_29oct21'


class SpatialRefSys(models.Model):
    srid = models.IntegerField(primary_key=True)
    auth_name = models.CharField(max_length=256, blank=True, null=True)
    auth_srid = models.IntegerField(blank=True, null=True)
    srtext = models.CharField(max_length=2048, blank=True, null=True)
    proj4text = models.CharField(max_length=2048, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'spatial_ref_sys'


class Ward61BuildingsOsm2Nov2021(models.Model):
    geom = models.TextField(blank=True, null=True)  # This field type is a guess.
    osm_id = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    name = models.CharField(max_length=97, blank=True, null=True)
    addrstreet = models.CharField(max_length=91, blank=True, null=True)
    building = models.CharField(max_length=80, blank=True, null=True)
    roofmateri = models.CharField(max_length=80, blank=True, null=True)
    osmward = models.CharField(max_length=100, blank=True, null=True)
    num_flat = models.IntegerField(blank=True, null=True)
    num_shops = models.IntegerField(blank=True, null=True)
    wing = models.CharField(max_length=100, blank=True, null=True)
    region = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'ward61_buildings_osm_2nov2021'


class WasteSegregationDetails(models.Model):
    track_id = models.AutoField(primary_key=True)
    region = models.CharField(max_length=100, blank=True, null=True)
    building_cluster = models.CharField(max_length=100, blank=True, null=True)
    category = models.CharField(max_length=100, blank=True, null=True)
    num_wings = models.CharField(max_length=100, blank=True, null=True)
    wing_name = models.CharField(max_length=100, blank=True, null=True)
    building_type = models.CharField(max_length=100, blank=True, null=True)
    population = models.CharField(max_length=100, blank=True, null=True)
    num_households_premises = models.CharField(max_length=100, blank=True, null=True)
    num_shops_premises = models.CharField(max_length=100, blank=True, null=True)
    type_waste_generator = models.CharField(max_length=100, blank=True, null=True)
    waste_segregation = models.CharField(max_length=100, blank=True, null=True)
    wet_waste_before_segregation = models.CharField(max_length=100, blank=True, null=True)
    dry_waste_before_segregation = models.CharField(max_length=100, blank=True, null=True)
    hazardous_waste = models.CharField(max_length=100, blank=True, null=True)
    compostable_waste = models.CharField(max_length=100, blank=True, null=True)
    recyclable_waste = models.CharField(max_length=100, blank=True, null=True)
    rejected_waste = models.CharField(max_length=100, blank=True, null=True)
    composting_type = models.CharField(max_length=100, blank=True, null=True)
    compost_bin_by_mcgm = models.CharField(max_length=100, blank=True, null=True)
    date_notice_issued = models.CharField(max_length=100, blank=True, null=True)
    name_number = models.CharField(max_length=100, blank=True, null=True)
    coll_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'waste_segregation_details'


class ZerowasteGrievance(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=254)
    mobile = models.CharField(max_length=15, blank=True, null=True)
    grievance = models.TextField()
    uploaded_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'zerowaste_grievance'


class ZerowasteRating(models.Model):
    name = models.CharField(max_length=100)
    mobile = models.CharField(max_length=10, blank=True, null=True)
    email = models.CharField(max_length=100, blank=True, null=True)
    service_swk = models.IntegerField()
    timing_swk = models.IntegerField(blank=True, null=True)
    mobile_swk = models.IntegerField(blank=True, null=True)
    compost_kit_garden = models.IntegerField(blank=True, null=True)
    communicate_swk = models.IntegerField(blank=True, null=True)
    solid_waste_man = models.IntegerField(blank=True, null=True)
    service_workers = models.IntegerField(blank=True, null=True)
    segregation = models.IntegerField(blank=True, null=True)
    recycle_process = models.IntegerField(blank=True, null=True)
    awareness = models.IntegerField(blank=True, null=True)
    role = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'zerowaste_rating'


class ZerowasteReport(models.Model):
    coll_date = models.DateField()
    recyclable_waste = models.FloatField(blank=True, null=True)
    compostable_waste = models.FloatField(blank=True, null=True)
    dry_waste_bf = models.FloatField(blank=True, null=True)
    hazardous_waste = models.FloatField(blank=True, null=True)
    region_name = models.CharField(max_length=100)
    wet_waste_bf = models.FloatField(blank=True, null=True)
    rejected_waste = models.FloatField(blank=True, null=True)
    building_name = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'zerowaste_report'