(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9676865436447326107582966869813390076160430908203125p-893 {- 4358072757369861 -893 (-2.97968e-269)}
; -1.9676865436447326107582966869813390076160430908203125p-893 | == 1.9676865436447326107582966869813390076160430908203125p-893
; [HW: 1.9676865436447326107582966869813390076160430908203125p-893] 

; mpf : + 4358072757369861 -893
; mpfd: + 4358072757369861 -893 (2.97968e-269) class: Pos. norm. non-zero
; hwf : + 4358072757369861 -893 (2.97968e-269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000010 #b1111011110111010010011100010100110111011110000000101)))
(assert (= r (fp #b0 #b00010000010 #b1111011110111010010011100010100110111011110000000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
