(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8336430381710682180340654667816124856472015380859375p-659 {+ 3754394476067231 -659 (7.66563e-199)}
; 1.8336430381710682180340654667816124856472015380859375p-659 | == 1.8336430381710682180340654667816124856472015380859375p-659
; [HW: 1.8336430381710682180340654667816124856472015380859375p-659] 

; mpf : + 3754394476067231 -659
; mpfd: + 3754394476067231 -659 (7.66563e-199) class: Pos. norm. non-zero
; hwf : + 3754394476067231 -659 (7.66563e-199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101101100 #b1101010101101001101000010101000101111011100110011111)))
(assert (= r (fp #b0 #b00101101100 #b1101010101101001101000010101000101111011100110011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
