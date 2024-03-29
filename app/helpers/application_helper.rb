module ApplicationHelper
  def cut_string(charset,src,start,length)
    require 'iconv'
    @conv=Iconv.new('UTF-16',charset)
    @reverse_conv=Iconv.new(charset,'UTF-16')
    p_start=start.class==Fixnum&&start>=0
    p_length=length.class==Fixnum&&length>=0
    return '' unless src&&p_start&&p_length
    src_utf16=@conv.iconv(src)
    cutted_src_utf_16=src_utf16[2*start+2,2*length]
    @reverse_conv.iconv(cutted_src_utf_16)
  end
end
