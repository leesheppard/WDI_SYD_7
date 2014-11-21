paper = [1, 2, 3, 4, 5, 6, 7, 8]

paper.inject(0) do |folded_piece, section_of_paper|
  folded_piece * section_of_paper
end