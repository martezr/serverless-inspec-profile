control 'iam_keys' do
  title 'Ensure IAM keys are no older than 90 days'
  impact 1.0

  describe aws_iam_access_keys.where { created_days_ago > 90 } do
    it { should_not exist }
  end

end
