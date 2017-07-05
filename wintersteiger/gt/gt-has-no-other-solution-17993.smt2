(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4151579454560252457895330735482275485992431640625p233 {- 1869705168455656 233 (-1.95341e+070)}
; Y = -1.4805962146148441416215746357920579612255096435546875p-142 {- 2164412933055083 -142 (-2.65569e-043)}
; -1.4151579454560252457895330735482275485992431640625p233 > -1.4805962146148441416215746357920579612255096435546875p-142 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101000 #b0110101001000111110010101000011001101000011111101000)))
(assert (= y (fp #b1 #b01101110001 #b0111101100001000010110101000000001011010001001101011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
