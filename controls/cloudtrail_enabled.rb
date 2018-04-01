control 'cloudtrail_enabled' do
  title 'CloudTrail must be enabled'
  impact 1.0

  describe aws_cloudtrail_trails do
    it { should exist }
  end   
end
