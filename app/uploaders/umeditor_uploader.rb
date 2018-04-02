# -*- encoding : utf-8 -*-
class UmeditorUploader < BaseUploader

  def store_dir
    "uploads/umeditor/#{Date.today.to_s}"
  end
 
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
