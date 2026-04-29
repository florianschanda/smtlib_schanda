(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.733993030833150594816061129677109420299530029296875p671 {- 3305610740152718 671 (-1.69893e+202)}
; -1.733993030833150594816061129677109420299530029296875p671 | == 1.733993030833150594816061129677109420299530029296875p671
; [HW: 1.733993030833150594816061129677109420299530029296875p671] 

; mpf : + 3305610740152718 671
; mpfd: + 3305610740152718 671 (1.69893e+202) class: Pos. norm. non-zero
; hwf : + 3305610740152718 671 (1.69893e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011110 #b1011101111100110111101111001111011101011100110001110)))
(assert (= r (fp #b0 #b11010011110 #b1011101111100110111101111001111011101011100110001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
