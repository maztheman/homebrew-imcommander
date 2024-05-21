require_relative "../lib/cmake"

class Imcommander < Formula
	desc "ImGui Total Commander split panel file manager"
	homepage "https://github.com/maztheman/ImCommander"
	url "https://github.com/maztheman/ImCommander/archive/refs/heads/feautre/add-macos-bundle.zip"
	sha256 ""
	head "https://github.com/maztheman/ImCommander.git", branch: "main"

	depends_on "cmake" => :build
	depends_on "ninja" => :build

	def install
		system "cmake", *imc_cmake_args
		system "cmake", "--build", "build"
		system "cmake", "--install", "build"
		prefix.install "build/install_manifest.txt"
	end
end