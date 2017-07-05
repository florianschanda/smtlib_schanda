(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7603318168172445989938523780438117682933807373046875p922 {- 3424230086896075 922 (-6.24095e+277)}
; Y = 1.4455685289116184666369235856109298765659332275390625p174 {+ 2006662260774385 174 (3.46145e+052)}
; -1.7603318168172445989938523780438117682933807373046875p922 % 1.4455685289116184666369235856109298765659332275390625p174 == -1.211141617841618778328438565949909389019012451171875p173
; [HW: -1.211141617841618778328438565949909389019012451171875p173] 

; mpf : - 950897311433918 173
; mpfd: - 950897311433918 173 (-1.45005e+052) class: Neg. norm. non-zero
; hwf : - 950897311433918 173 (-1.45005e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011001 #b1100001010100101000110110001111101010110100111001011)))
(assert (= y (fp #b0 #b10010101101 #b0111001000010000110001110111001111001101010111110001)))
(assert (= r (fp #b1 #b10010101100 #x360d6087744be)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
