(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6648369304659287326586536437389440834522247314453125p-166 {+ 2994159352308501 -166 (1.77989e-050)}
; Y = 1.7660500130629486204014710892806760966777801513671875p384 {+ 3449982553377459 384 (6.95859e+115)}
; 1.6648369304659287326586536437389440834522247314453125p-166 = 1.7660500130629486204014710892806760966777801513671875p384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011001 #b1010101000110010110000001100100110000110001100010101)))
(assert (= y (fp #b0 #b10101111111 #b1100010000011011110110101000100100110100101010110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
