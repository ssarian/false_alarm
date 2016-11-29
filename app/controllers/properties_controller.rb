class PropertiesController < InheritedResources::Base

  private

    def property_params
      params.require(:property).permit(:propertyName, :address, :city, :state, :zip, :fkAcctOwner)
    end
end

