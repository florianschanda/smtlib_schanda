(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8086272922034003496349896522588096559047698974609375p957 {+ 3641733571848847 957 (2.20321e+288)}
; 1.8086272922034003496349896522588096559047698974609375p957 | == 1.8086272922034003496349896522588096559047698974609375p957
; [HW: 1.8086272922034003496349896522588096559047698974609375p957] 

; mpf : + 3641733571848847 957
; mpfd: + 3641733571848847 957 (2.20321e+288) class: Pos. norm. non-zero
; hwf : + 3641733571848847 957 (2.20321e+288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110111100 #b1100111100000010001100101011111010101010101010001111)))
(assert (= r (fp #b0 #b11110111100 #b1100111100000010001100101011111010101010101010001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
