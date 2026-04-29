(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9850954135186584803562936940579675137996673583984375p-280 {+ 4436475337247015 -280 (1.02184e-084)}
; 1.9850954135186584803562936940579675137996673583984375p-280 S == 1.4089341409443729702388736768625676631927490234375p-140
; [HW: 1.4089341409443729702388736768625676631927490234375p-140] 

; mpf : + 1841675644776152 -140
; mpfd: + 1841675644776152 -140 (1.01086e-042) class: Pos. norm. non-zero
; hwf : + 1841675644776152 -140 (1.01086e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100111 #b1111110000101111001101101000100010000000100100100111)))
(assert (= r (fp #b0 #b01101110011 #b0110100010101111111010000110100110010010111011011000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
