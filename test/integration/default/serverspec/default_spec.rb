require 'spec_helper'

describe 'apache::default' do
  describe command('curl http://localhost') do
    its(:stdout) { should match(/Welcome home/) }
  end

  describe command('curl http://localhost:8080') do
    its(:stdout) { should match(/Welcome admins/) }
  end
end
