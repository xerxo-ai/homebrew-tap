class Xerxo < Formula
  include Language::Python::Virtualenv

  desc "AI-powered business operations CLI - chat with agents, run workflows, manage tasks"
  homepage "https://xerxo.ai"
  url "https://files.pythonhosted.org/packages/source/x/xerxo/xerxo-1.0.2.tar.gz"
  sha256 "5158dc981a939a421482a2d73aba50cca80523f6a0e5bf688026d7c1698a7793"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      To get started, run:
        xerxo setup

      For interactive AI chat:
        xerxo agent chat

      For the full Terminal UI:
        xerxo tui
    EOS
  end

  test do
    assert_match "xerxo", shell_output("#{bin}/xerxo --version")
  end
end
