(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0792846509331781579277276250650174915790557861328125p188 {+ 357066324398861 188 (4.23424e+056)}
; Y = -1.9894075691301822406131805109907872974872589111328125p426 {- 4455895559652237 426 (-3.44748e+128)}
; 1.0792846509331781579277276250650174915790557861328125p188 < -1.9894075691301822406131805109907872974872589111328125p426 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111011 #b0001010001001011111111111011011011010101001100001101)))
(assert (= y (fp #b1 #b10110101001 #b1111110101001001110100000111111111010100001110001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
