(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2764231917228767709815429043374024331569671630859375p-777 {+ 1244899383239711 -777 (1.60579e-234)}
; Y = 1.6329205640542923116953488715807907283306121826171875p-269 {+ 2850420816430035 -269 (1.72146e-081)}
; 1.2764231917228767709815429043374024331569671630859375p-777 < 1.6329205640542923116953488715807907283306121826171875p-269 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110110 #b0100011011000011101010111001100001001110010000011111)))
(assert (= y (fp #b0 #b01011110010 #b1010001000000111000101010000001110010100001111010011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
