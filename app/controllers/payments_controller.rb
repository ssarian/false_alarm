class PaymentsController < InheritedResources::Base

  private

    def payment_params
      params.require(:payment).permit(:amount, :paymentDateTime, :paymentType, :fkActionKey, :fkCitationkey, :fkPropertyKey, :fkAlarmKey, :fkUserKey)
    end
end

