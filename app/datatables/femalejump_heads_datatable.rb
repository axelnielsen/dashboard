class FemalejumpHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    femalejump_heads.map do |femalejump_head|
      [ 
        
        best_in_place(femalejump_head, :championship_id),
        best_in_place(femalejump_head, :fecha),
        best_in_place(femalejump_head, :hora)
       ]
     end
  end
 
  def count
    FemalejumpHead.count
  end

  def total_entries
    femalejump_heads.total_count
    # will_paginate
    # femalejump_heads.total_entries
  end

  def femalejump_heads
    @femalejump_heads ||= fetch_femalejump_heads
  end

  def fetch_femalejump_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # femalejump_heads = FemalejumpHead.page(page).per_page(per_page)
    femalejump_heads = FemalejumpHead.order("#{sort_column} #{sort_direction}")
    femalejump_heads = femalejump_heads.page(page).per(per_page)
    femalejump_heads = femalejump_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end