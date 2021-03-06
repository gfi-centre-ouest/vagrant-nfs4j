require 'vagrant-nfs4j/version'

module VagrantNfs4j
  class Error < StandardError;
  end

  require 'vagrant-nfs4j/plugin'

  def self.source_root
    @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
  end

  def self.get_binary_path
    source_root.join('bin')
  end

  def self.get_path_for_file(file)
    get_binary_path.join(file).to_s.gsub('/', '\\')
  end
end
