(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.93250205024075949467032842221669852733612060546875p804 {- 4199615885986508 804 (-2.06175e+242)}
; -1.93250205024075949467032842221669852733612060546875p804 | == 1.93250205024075949467032842221669852733612060546875p804
; [HW: 1.93250205024075949467032842221669852733612060546875p804] 

; mpf : + 4199615885986508 804
; mpfd: + 4199615885986508 804 (2.06175e+242) class: Pos. norm. non-zero
; hwf : + 4199615885986508 804 (2.06175e+242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100011 #b1110111010111000011101000101000100111100101011001100)))
(assert (= r (fp #b0 #b11100100011 #b1110111010111000011101000101000100111100101011001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
