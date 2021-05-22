from django.contrib import admin
import sellers.models as models


@admin.register(models.Product)
class ProductAdmin(admin.ModelAdmin):
    pass


@admin.register(models.Seller)
class SellerAdmin(admin.ModelAdmin):
    pass


@admin.register(models.Reward)
class SellerAdmin(admin.ModelAdmin):
    pass
