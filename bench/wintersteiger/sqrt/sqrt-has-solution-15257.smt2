(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2833422576771591483435486225062049925327301025390625p647 {+ 1276060086093169 647 (7.49462e+194)}
; 1.2833422576771591483435486225062049925327301025390625p647 S == 1.6020875492164334819022997180582024157047271728515625p323
; [HW: 1.6020875492164334819022997180582024157047271728515625p323] 

; mpf : + 2711561262295545 323
; mpfd: + 2711561262295545 323 (2.73763e+097) class: Pos. norm. non-zero
; hwf : + 2711561262295545 323 (2.73763e+097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000110 #b0100100010001001000111100100001001001100010101110001)))
(assert (= r (fp #b0 #b10101000010 #b1001101000100010011010001101110100110110100111111001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
