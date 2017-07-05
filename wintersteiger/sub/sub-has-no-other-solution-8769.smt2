(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.269165931498750676809095239150337874889373779296875p-547 {+ 1212215588798606 -547 (2.75493e-165)}
; Y = 1.4094119694705093959186115171178244054317474365234375p-514 {+ 1843827593148407 -514 (2.62797e-155)}
; 1.269165931498750676809095239150337874889373779296875p-547 - 1.4094119694705093959186115171178244054317474365234375p-514 == -1.409411969322758917400051359436474740505218505859375p-514
; [HW: -1.409411969322758917400051359436474740505218505859375p-514] 

; mpf : - 1843827592482998 -514
; mpfd: - 1843827592482998 -514 (-2.62797e-155) class: Neg. norm. non-zero
; hwf : - 1843827592482998 -514 (-2.62797e-155) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011100 #b0100010011101000000011101111100011111100000010001110)))
(assert (= y (fp #b0 #b00111111101 #b0110100011001111001110010000101101110111011111110111)))
(assert (= r (fp #b1 #b00111111101 #b0110100011001111001110010000101011010101000010110110)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
