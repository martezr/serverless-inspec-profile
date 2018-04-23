control 'iam_root_user' do
  title 'The root user should be secured'
  impact 1.0

  describe aws_iam_root_user do
    it { should have_mfa_enabled }
    it { should_not have_access_key }
  end
end
