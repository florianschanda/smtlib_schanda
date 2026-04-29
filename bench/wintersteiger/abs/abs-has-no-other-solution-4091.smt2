(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.129529455543754945523460264666937291622161865234375p874 {- 583348807720358 874 (-1.4227e+263)}
; -1.129529455543754945523460264666937291622161865234375p874 | == 1.129529455543754945523460264666937291622161865234375p874
; [HW: 1.129529455543754945523460264666937291622161865234375p874] 

; mpf : + 583348807720358 874
; mpfd: + 583348807720358 874 (1.4227e+263) class: Pos. norm. non-zero
; hwf : + 583348807720358 874 (1.4227e+263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101001 #b0010000100101000110101111010011101101101110110100110)))
(assert (= r (fp #b0 #b11101101001 #b0010000100101000110101111010011101101101110110100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
