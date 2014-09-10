require 'spec_helper'
describe 'types::yumrepo' do

  context 'yumrepo with bare minimum specified' do
    let(:title) { 'yumrepo-1' }
    let(:params) do
      { :baseurl => 'http://host.domain.tld/yum/' }
    end
    let(:facts) { { :osfamily => 'RedHat' } }

    it {
      should contain_yumrepo('yumrepo-1').with({
        'baseurl' => 'http://host.domain.tld/yum/',
      })
    }
  end

  context 'yumrepo with all options specified' do
    let(:title) { 'yumrepo-1' }
    let(:params) do
      { :baseurl  => 'http://host.domain.tld/yum/',
        :descr    => 'custom yum reop',
        :enabled  => '1',
        :gpgcheck => '1',
        :gpgkey   => 'http://host.domain.tld/repo.key',
        :priority => '1',
        :exclude  => 'pkg2',
        :proxy    => 'http://www-proxy.host.domain.tld:8080',
      }
    end
    let(:facts) { { :osfamily => 'RedHat' } }

    it {
      should contain_yumrepo('yumrepo-1').with({
        :baseurl  => 'http://host.domain.tld/yum/',
        :descr    => 'custom yum reop',
        :enabled  => '1',
        :gpgcheck => '1',
        :gpgkey   => 'http://host.domain.tld/repo.key',
        :priority => '1',
        :exclude  => 'pkg2',
        :proxy    => 'http://www-proxy.host.domain.tld:8080',
      })
    }
  end
end
