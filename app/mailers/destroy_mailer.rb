class DestroyMailer < ApplicationMailer

    def destroy_agenda_mail(member)
      @member_email = User.find(member.user_id).email
      # @agenda_name = agenda_name
      mail to: @member_email, subject: 'チーム内のアジェンダが削除されました'
    end
end
