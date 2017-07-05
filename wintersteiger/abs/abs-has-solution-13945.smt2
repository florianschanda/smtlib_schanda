(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.341972266794912993503885445534251630306243896484375p728 {- 1540106173308614 728 (-1.89487e+219)}
; -1.341972266794912993503885445534251630306243896484375p728 | == 1.341972266794912993503885445534251630306243896484375p728
; [HW: 1.341972266794912993503885445534251630306243896484375p728] 

; mpf : + 1540106173308614 728
; mpfd: + 1540106173308614 728 (1.89487e+219) class: Pos. norm. non-zero
; hwf : + 1540106173308614 728 (1.89487e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010111 #b0101011110001011011111101001011000000101111011000110)))
(assert (= r (fp #b0 #b11011010111 #b0101011110001011011111101001011000000101111011000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
