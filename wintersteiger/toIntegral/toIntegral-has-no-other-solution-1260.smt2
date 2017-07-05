(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2326262336187279178290054915123619139194488525390625 63 {+ 1047655419041905 63 (1.1369e+019)}
; 1.2326262336187279178290054915123619139194488525390625 63 I == 1.2326262336187279178290054915123619139194488525390625 63
; [HW: 1.2326262336187279178290054915123619139194488525390625 63] 

; mpf : + 1047655419041905 63
; mpfd: + 1047655419041905 63 (1.1369e+019) class: Pos. norm. non-zero
; hwf : + 1047655419041905 63 (1.1369e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111110 #b0011101110001101011001001001000110010101100001110001)))
(assert (= r (fp #b0 #b10000111110 #b0011101110001101011001001001000110010101100001110001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
