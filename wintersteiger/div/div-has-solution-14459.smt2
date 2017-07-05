(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2314442945445220889411075404495932161808013916015625p-78 {+ 1042332438667737 -78 (4.07451e-024)}
; Y = 1.0606749295194000115571952846948988735675811767578125p-752 {+ 273255589974301 -752 (4.4774e-227)}
; 1.2314442945445220889411075404495932161808013916015625p-78 / 1.0606749295194000115571952846948988735675811767578125p-752 == 1.1610006612511327706016572847147472202777862548828125p674
; [HW: 1.1610006612511327706016572847147472202777862548828125p674] 

; mpf : + 725082518017005 674
; mpfd: + 725082518017005 674 (9.10017e+202) class: Pos. norm. non-zero
; hwf : + 725082518017005 674 (9.10017e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110001 #b0011101100111111111011101110101111101010000111011001)))
(assert (= y (fp #b0 #b00100001111 #b0000111110001000011001000110010111111001000100011101)))
(assert (= r (fp #b0 #b11010100001 #b0010100100110111010101101101111010110101001111101101)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
