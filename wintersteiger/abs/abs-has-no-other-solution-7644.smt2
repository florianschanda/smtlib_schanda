(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4554685306318277948633976848213933408260345458984375p745 {+ 2051247904832487 745 (2.6937e+224)}
; 1.4554685306318277948633976848213933408260345458984375p745 | == 1.4554685306318277948633976848213933408260345458984375p745
; [HW: 1.4554685306318277948633976848213933408260345458984375p745] 

; mpf : + 2051247904832487 745
; mpfd: + 2051247904832487 745 (2.6937e+224) class: Pos. norm. non-zero
; hwf : + 2051247904832487 745 (2.6937e+224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101000 #b0111010010011001100101011110101101101011101111100111)))
(assert (= r (fp #b0 #b11011101000 #b0111010010011001100101011110101101101011101111100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
