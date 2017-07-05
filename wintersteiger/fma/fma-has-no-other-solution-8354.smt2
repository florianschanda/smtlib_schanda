(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4893143654638800743583715302520431578159332275390625p142 {+ 2203675993970161 142 (8.30321e+042)}
; Y = -1.4626240266609193962921153797651641070842742919921875p462 {- 2083473394082755 462 (-1.74177e+139)}
; Z = 1.354051302910014964453466745908372104167938232421875p-621 {+ 1594505315855582 -621 (1.55599e-187)}
; 1.4893143654638800743583715302520431578159332275390625p142 x -1.4626240266609193962921153797651641070842742919921875p462 1.354051302910014964453466745908372104167938232421875p-621 == -1.0891534870893659903146044598543085157871246337890625p605
; [HW: -1.0891534870893659903146044598543085157871246337890625p605] 

; mpf : - 401511611234449 605
; mpfd: - 401511611234449 605 (-1.44623e+182) class: Neg. norm. non-zero
; hwf : - 401511611234449 605 (-1.44623e+182) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001101 #b0111110101000011101101001100110100100001010111110001)))
(assert (= y (fp #b1 #b10111001101 #b0111011001101110100001110011100011011010001111000011)))
(assert (= z (fp #b0 #b00110010010 #b0101101010100011000110110010111100011010110011011110)))
(assert (= r (fp #b1 #b11001011100 #b0001011011010010110000110100111101011111100010010001)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
