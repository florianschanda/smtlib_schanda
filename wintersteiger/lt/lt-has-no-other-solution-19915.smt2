(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.84578752082223740416111468221060931682586669921875p557 {- 3809088363609644 557 (-8.70742e+167)}
; Y = -1.1901564936823765261664220815873704850673675537109375p84 {- 856388714090031 84 (-2.3021e+025)}
; -1.84578752082223740416111468221060931682586669921875p557 < -1.1901564936823765261664220815873704850673675537109375p84 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101100 #b1101100010000101100001111110110101001011111000101100)))
(assert (= y (fp #b1 #b10001010011 #b0011000010101110000110001001000101111100111000101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
