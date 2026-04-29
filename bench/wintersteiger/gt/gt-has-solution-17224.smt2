(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.605862967510993666309104810352437198162078857421875p400 {- 2728564234720094 400 (-4.14674e+120)}
; Y = 1.3568711253156406915110210320563055574893951416015625p-886 {+ 1607204666990809 -886 (2.63004e-267)}
; -1.605862967510993666309104810352437198162078857421875p400 > 1.3568711253156406915110210320563055574893951416015625p-886 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001111 #b1001101100011001110101011101111101010001001101011110)))
(assert (= y (fp #b0 #b00010001001 #b0101101101011011111001111111010000011110000011011001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
