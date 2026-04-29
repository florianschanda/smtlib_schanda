(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1571246324361370572120222277590073645114898681640625p-865 {+ 707626436090113 -865 (4.70364e-261)}
; Y = -1.94404934660318051697913688258267939090728759765625p588 {- 4251620285581444 588 (-1.96945e+177)}
; 1.1571246324361370572120222277590073645114898681640625p-865 = -1.94404934660318051697913688258267939090728759765625p588 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011110 #b0010100000111001010100011110010110110101100100000001)))
(assert (= y (fp #b1 #b11001001011 #b1111000110101101001101111100110101111000100010000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
