(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.675924201451519213179608414066024124622344970703125p674 {+ 3044091981787762 674 (1.31363e+203)}
; Y = -1.5961646758832335191158335874206386506557464599609375p809 {- 2684887012159183 809 (-5.44934e+243)}
; 1.675924201451519213179608414066024124622344970703125p674 * -1.5961646758832335191158335874206386506557464599609375p809 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100001 #b1010110100001001010111100101001111001111001001110010)))
(assert (= y (fp #b1 #b11100101000 #b1001100010011110001111111000100111110010111011001111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
