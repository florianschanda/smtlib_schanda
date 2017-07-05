(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.180441007947225617868980407365597784519195556640625p583 {+ 812634056153482 583 (3.73707e+175)}
; Y = -1.228569576052098266671919191139750182628631591796875p695 {- 1029385857536462 695 (-2.01951e+209)}
; 1.180441007947225617868980407365597784519195556640625p583 % -1.228569576052098266671919191139750182628631591796875p695 == 1.180441007947225617868980407365597784519195556640625p583
; [HW: 1.180441007947225617868980407365597784519195556640625p583] 

; mpf : + 812634056153482 583
; mpfd: + 812634056153482 583 (3.73707e+175) class: Pos. norm. non-zero
; hwf : + 812634056153482 583 (3.73707e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000110 #b0010111000110001011000011100001111111101100110001010)))
(assert (= y (fp #b1 #b11010110110 #b0011101010000011100010010010011000000001000111001110)))
(assert (= r (fp #b0 #b11001000110 #x2e3161c3fd98a)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
