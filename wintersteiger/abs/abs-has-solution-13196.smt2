(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7315625724288723485955188152729533612728118896484375p-868 {+ 3294664928588871 -868 (8.79836e-262)}
; 1.7315625724288723485955188152729533612728118896484375p-868 | == 1.7315625724288723485955188152729533612728118896484375p-868
; [HW: 1.7315625724288723485955188152729533612728118896484375p-868] 

; mpf : + 3294664928588871 -868
; mpfd: + 3294664928588871 -868 (8.79836e-262) class: Pos. norm. non-zero
; hwf : + 3294664928588871 -868 (8.79836e-262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011011 #b1011101101000111101011110100101110001111010001000111)))
(assert (= r (fp #b0 #b00010011011 #b1011101101000111101011110100101110001111010001000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
