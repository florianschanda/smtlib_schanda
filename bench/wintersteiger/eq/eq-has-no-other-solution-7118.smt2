(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6058510457609196375727833583368919789791107177734375p-954 {+ 2728510543930903 -954 (1.0546e-287)}
; Y = 1.736969325817818710078199728741310536861419677734375p457 {+ 3319014781136614 457 (6.46398e+137)}
; 1.6058510457609196375727833583368919789791107177734375p-954 = 1.736969325817818710078199728741310536861419677734375p457 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000101 #b1001101100011001000011011101101111001010011000010111)))
(assert (= y (fp #b0 #b10111001000 #b1011110010101010000001011001000010001010111011100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
