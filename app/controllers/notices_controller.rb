class NoticesController < InheritedResources::Base

  private

    def notice_params
      params.require(:notice).permit(:name, :pkNoticeKey)
    end
end

