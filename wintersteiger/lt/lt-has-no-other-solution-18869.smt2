(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0145511913039821916271421287092380225658416748046875p-243 {+ 65532739734411 -243 (7.1777e-074)}
; Y = 1.30715348776301443223246678826399147510528564453125p-239 {+ 1383296333035060 -239 (1.47965e-072)}
; 1.0145511913039821916271421287092380225658416748046875p-243 < 1.30715348776301443223246678826399147510528564453125p-239 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001100 #b0000001110111001101000000111101011000100101110001011)))
(assert (= y (fp #b0 #b01100010000 #b0100111010100001100111000110100011001011011000110100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
