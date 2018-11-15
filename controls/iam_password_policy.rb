control 'iam_password_policy_expiration' do
  title 'Passwords must be set to expire'
  impact 1.0

  describe aws_iam_password_policy do
    it { should require_lowercase_characters }
    it { should require_uppercase_characters }
    it { should require_symbols }
    it { should require_numbers }
    its('minimum_password_length') { should be > 8 }
    its('max_password_age_in_days') { should be > 90 }
  end
end
