(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4572989200615495963830881009926088154315948486328125p-827 {+ 2059491245986125 -827 (1.62833e-249)}
; Y = 1.998382166024624151390298720798455178737640380859375p400 {+ 4496313550881846 400 (5.16032e+120)}
; 1.4572989200615495963830881009926088154315948486328125p-827 > 1.998382166024624151390298720798455178737640380859375p400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000100 #b0111010100010001100010101100001000101001000101001101)))
(assert (= y (fp #b0 #b10110001111 #b1111111110010101111110010011111111111100010000110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
