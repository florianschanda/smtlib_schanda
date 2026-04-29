(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.106354064763293454376480440259911119937896728515625p-843 {+ 478976126437306 -843 (1.88629e-254)}
; 1.106354064763293454376480440259911119937896728515625p-843 | == 1.106354064763293454376480440259911119937896728515625p-843
; [HW: 1.106354064763293454376480440259911119937896728515625p-843] 

; mpf : + 478976126437306 -843
; mpfd: + 478976126437306 -843 (1.88629e-254) class: Pos. norm. non-zero
; hwf : + 478976126437306 -843 (1.88629e-254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110100 #b0001101100111010000001010001110111110100011110111010)))
(assert (= r (fp #b0 #b00010110100 #b0001101100111010000001010001110111110100011110111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
