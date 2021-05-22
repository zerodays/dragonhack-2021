from django.contrib import admin
import containers.models as models


@admin.register(models.RContainer)
class RContainerAdmin(admin.ModelAdmin):
    pass


@admin.register(models.ContainerPurchase)
class ContainerPurchaseAdmin(admin.ModelAdmin):
    pass
