(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1743926473399881604819938729633577167987823486328125p117 {- 785394661576525 117 (-1.95129e+035)}
; Y = -1.2076741241043669194965559654519893229007720947265625p608 {- 935281107930921 608 (-1.28288e+183)}
; Z = 1.372432049446574264806031351326964795589447021484375p-653 {+ 1677284839108422 -653 (3.67201e-197)}
; -1.1743926473399881604819938729633577167987823486328125p117 x -1.2076741241043669194965559654519893229007720947265625p608 1.372432049446574264806031351326964795589447021484375p-653 == 1.41828361173092876157397768110968172550201416015625p725
; [HW: 1.41828361173092876157397768110968172550201416015625p725] 

; mpf : + 1883781917926596 725
; mpfd: + 1883781917926596 725 (2.50328e+218) class: Pos. norm. non-zero
; hwf : + 1883781917926596 725 (2.50328e+218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110100 #b0010110010100100111111110001110011111100111101001101)))
(assert (= y (fp #b1 #b11001011111 #b0011010100101010001000011010001101000000111100101001)))
(assert (= z (fp #b0 #b00101110010 #b0101111101010111101101001111000001011010111101000110)))
(assert (= r (fp #b0 #b11011010100 #b0110101100010100101000101000000011010110010011000100)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
