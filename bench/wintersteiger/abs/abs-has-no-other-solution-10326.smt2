(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8730765716671144982541363788186572492122650146484375p863 {- 3931987322825927 863 (-1.15197e+260)}
; -1.8730765716671144982541363788186572492122650146484375p863 | == 1.8730765716671144982541363788186572492122650146484375p863
; [HW: 1.8730765716671144982541363788186572492122650146484375p863] 

; mpf : + 3931987322825927 863
; mpfd: + 3931987322825927 863 (1.15197e+260) class: Pos. norm. non-zero
; hwf : + 3931987322825927 863 (1.15197e+260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011110 #b1101111110000001111100100011101000110110110011000111)))
(assert (= r (fp #b0 #b11101011110 #b1101111110000001111100100011101000110110110011000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
