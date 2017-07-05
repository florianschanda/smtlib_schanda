(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5012902141577424419693898016703315079212188720703125p58 {+ 2257610421685285 58 (4.32717e+017)}
; Y = 1.1841079484405050425976924088899977505207061767578125p-161 {+ 829148487992605 -161 (4.051e-049)}
; 1.5012902141577424419693898016703315079212188720703125p58 = 1.1841079484405050425976924088899977505207061767578125p-161 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111001 #b1000000001010100100011100011001110011100110000100101)))
(assert (= y (fp #b0 #b01101011110 #b0010111100100001101100101101000101111100010100011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
