class Xforms < Formula
  desc "XForms Toolkit"
  homepage "http://xforms-toolkit.org"
  url "http://download.savannah.nongnu.org/releases/xforms/xforms-1.2.4.tar.gz"
  sha256 "78cc6b07071bbeaa1f906e0a22d5e9980e48f8913577bc082d661afe5cb75696"
  
  depends_on "libx11"
  depends_on "libxpm"
  depends_on "jpeg"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
