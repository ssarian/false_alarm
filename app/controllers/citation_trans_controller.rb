class CitationTransController < InheritedResources::Base

  private

    def citation_tran_params
      params.require(:citation_tran).permit(:transDateTime, :fkCitationKey, :fkActionKey, :fkTemplateKey, :fkUserKey)
    end
end

