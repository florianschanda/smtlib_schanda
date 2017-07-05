(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.757831124783693521607119691907428205013275146484375p21 {+ 3412967971185606 21 (3.68644e+006)}
; 1.757831124783693521607119691907428205013275146484375p21 | == 1.757831124783693521607119691907428205013275146484375p21
; [HW: 1.757831124783693521607119691907428205013275146484375p21] 

; mpf : + 3412967971185606 21
; mpfd: + 3412967971185606 21 (3.68644e+006) class: Pos. norm. non-zero
; hwf : + 3412967971185606 21 (3.68644e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010100 #b1100001000000001001110000111100011010110001111000110)))
(assert (= r (fp #b0 #b10000010100 #b1100001000000001001110000111100011010110001111000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
