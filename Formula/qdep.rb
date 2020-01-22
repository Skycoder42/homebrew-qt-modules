class Qdep < Formula
	include Language::Python::Virtualenv
	
	version "1.1.1"
	revision 1
	desc "A very basic yet simple to use dependency management tool for qmake based projects"
	homepage "https://github.com/Skycoder42/qdep"
	url "https://github.com/Skycoder42/qdep/archive/#{version}.tar.gz"
	sha256 "b42a8f934d1114e6d7b32c78c513b153fe15fd0e7eb55872af0726ca6514dcec"
	
	depends_on "python3"
	
	### setup_requires dependencies	
	resource "lockfile" do
		url "https://files.pythonhosted.org/packages/17/47/72cb04a58a35ec495f96984dddb48232b551aafb95bde614605b754fe6f7/lockfile-0.12.2.tar.gz"
		sha256 "6aed02de03cba24efabcd600b30540140634fc06cfa603822d508d5361e9f799"
	end
	
	resource "argcomplete" do
		url "https://files.pythonhosted.org/packages/43/61/345856864a72ccc004bea5f74183c58bfd6675f9eab931ff9ce21a8fe06b/argcomplete-1.11.1.tar.gz"
		sha256 "5ae7b601be17bf38a749ec06aa07fb04e7b6b5fc17906948dc1866e7facf3740"
	end
	
	resource "appdirs" do
		url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
		sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
	end
	
	def install
		virtualenv_install_with_resources
	end
	
	test do
		system "qdep", "--version"
	end
end
