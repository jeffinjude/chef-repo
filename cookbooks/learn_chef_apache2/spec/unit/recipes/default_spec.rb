#
# Cookbook Name:: learn_chef_apache2
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'learn_chef_apache2::default' do
  context 'sample test case' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs apache2' do
      expect(chef_run).to install_package 'apache2'
    end
  end
end
