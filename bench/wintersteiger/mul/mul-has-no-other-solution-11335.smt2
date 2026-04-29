(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6870295088318927323456364320009015500545501708984375p-711 {+ 3094105839967847 -711 (1.56601e-214)}
; Y = -0.0514182712212569725807043141685426235198974609375p-1022 {- 231567307112088 -1023 (-1.14409e-309)}
; 1.6870295088318927323456364320009015500545501708984375p-711 * -0.0514182712212569725807043141685426235198974609375p-1022 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100111000 #b1010111111100001001010100111011111010001111001100111)))
(assert (= y (fp #b1 #b00000000000 #b0000110100101001101111110111000101001111111010011000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
