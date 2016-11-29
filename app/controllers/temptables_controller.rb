class TemptablesController < InheritedResources::Base

  private

    def temptable_params
      params.require(:temptable).permit(:f_name, :emp_number)
    end
end

