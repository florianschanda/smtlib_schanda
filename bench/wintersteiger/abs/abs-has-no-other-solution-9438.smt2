(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7507327563576617901475174221559427678585052490234375p-910 {- 3380999761787191 -910 (-2.02266e-274)}
; -1.7507327563576617901475174221559427678585052490234375p-910 | == 1.7507327563576617901475174221559427678585052490234375p-910
; [HW: 1.7507327563576617901475174221559427678585052490234375p-910] 

; mpf : + 3380999761787191 -910
; mpfd: + 3380999761787191 -910 (2.02266e-274) class: Pos. norm. non-zero
; hwf : + 3380999761787191 -910 (2.02266e-274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110001 #b1100000000110000000001011001110010010111100100110111)))
(assert (= r (fp #b0 #b00001110001 #b1100000000110000000001011001110010010111100100110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
