(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4718480195823901990337390088825486600399017333984375p79 {+ 2125014565166759 79 (8.89678e+023)}
; 1.4718480195823901990337390088825486600399017333984375p79 | == 1.4718480195823901990337390088825486600399017333984375p79
; [HW: 1.4718480195823901990337390088825486600399017333984375p79] 

; mpf : + 2125014565166759 79
; mpfd: + 2125014565166759 79 (8.89678e+023) class: Pos. norm. non-zero
; hwf : + 2125014565166759 79 (8.89678e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001110 #b0111100011001011000010000010010011001001111010100111)))
(assert (= r (fp #b0 #b10001001110 #b0111100011001011000010000010010011001001111010100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
