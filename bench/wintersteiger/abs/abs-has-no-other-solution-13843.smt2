(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0652903353968472544011092395521700382232666015625p1014 {+ 294041530164136 1014 (1.87018e+305)}
; 1.0652903353968472544011092395521700382232666015625p1014 | == 1.0652903353968472544011092395521700382232666015625p1014
; [HW: 1.0652903353968472544011092395521700382232666015625p1014] 

; mpf : + 294041530164136 1014
; mpfd: + 294041530164136 1014 (1.87018e+305) class: Pos. norm. non-zero
; hwf : + 294041530164136 1014 (1.87018e+305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110101 #b0001000010110110110111100000111101000110001110101000)))
(assert (= r (fp #b0 #b11111110101 #b0001000010110110110111100000111101000110001110101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
