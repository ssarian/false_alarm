class FaSiteTypesController < InheritedResources::Base

  private

    def fa_site_type_params
      params.require(:fa_site_type).permit(:description, :siteCode)
    end
end

