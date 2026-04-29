(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.666603549273260487240122529328800737857818603515625p-1022 {+ 3002115496110906 -1023 (1.48324e-308)}
; 0.666603549273260487240122529328800737857818603515625p-1022 | == 0.666603549273260487240122529328800737857818603515625p-1022
; [HW: 0.666603549273260487240122529328800737857818603515625p-1022] 

; mpf : + 3002115496110906 -1023
; mpfd: + 3002115496110906 -1023 (1.48324e-308) class: Pos. denorm.
; hwf : + 3002115496110906 -1023 (1.48324e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1010101010100110100001111011101110000110101100111010)))
(assert (= r (fp #b0 #b00000000000 #b1010101010100110100001111011101110000110101100111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
