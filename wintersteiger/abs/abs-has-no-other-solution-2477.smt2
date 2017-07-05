(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.153969019007648366681451079784892499446868896484375p1023 {- 693414816629446 1023 (-1.03724e+308)}
; -1.153969019007648366681451079784892499446868896484375p1023 | == 1.153969019007648366681451079784892499446868896484375p1023
; [HW: 1.153969019007648366681451079784892499446868896484375p1023] 

; mpf : + 693414816629446 1023
; mpfd: + 693414816629446 1023 (1.03724e+308) class: Pos. norm. non-zero
; hwf : + 693414816629446 1023 (1.03724e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111110 #b0010011101101010100000110111110100111100001011000110)))
(assert (= r (fp #b0 #b11111111110 #b0010011101101010100000110111110100111100001011000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
