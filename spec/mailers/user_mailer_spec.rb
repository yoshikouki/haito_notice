require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "account_activation" do
    let(:user) { FactoryBot.create(:inact) }
    let(:mail) { UserMailer.account_activation(user) }
    let(:mail_body) do
      mail.body.encoded.split(/\r\n/).map { |i| Base64.decode64(i) }.join
    end

    before do
      user.activation_token = User.new_token
    end

    it { expect(mail.subject).to eq "配当ノーティスへのご登録をありがとうございます！" }
    it { expect(mail.to[0]).to eq user.email }
    it { expect(mail.from[0]).to eq "noreply@example.com" }
    it { expect(mail_body).to match user.name }
    it { expect(mail_body).to match user.activation_token }
    it { expect(mail_body).to match CGI.escape(user.email) }
  end

  describe "password_reset" do
    let(:user) { FactoryBot.create(:user) }
    let(:mail) do
      user.create_reset_digest
      UserMailer.password_reset(user)
    end
    let(:mail_body) do
      mail.body.encoded.split(/\r\n/).map { |i| Base64.decode64(i) }.join
    end

    it { expect(mail.subject).to eq "【配当ノーティス】パスワードの再設定" }
    it { expect(mail.to[0]).to eq user.email }
    it { expect(mail.from[0]).to eq "noreply@example.com" }
    it { expect(mail_body).to match user.reset_token }
    it { expect(mail_body).to match CGI.escape(user.email) }
  end
end
