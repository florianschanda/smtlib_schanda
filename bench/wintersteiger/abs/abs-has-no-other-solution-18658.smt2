(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.82877846009238620439418809837661683559417724609375p902 {- 3732486364044764 902 (-6.18326e+271)}
; -1.82877846009238620439418809837661683559417724609375p902 | == 1.82877846009238620439418809837661683559417724609375p902
; [HW: 1.82877846009238620439418809837661683559417724609375p902] 

; mpf : + 3732486364044764 902
; mpfd: + 3732486364044764 902 (6.18326e+271) class: Pos. norm. non-zero
; hwf : + 3732486364044764 902 (6.18326e+271) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000101 #b1101010000101010110100110011110110111001110111011100)))
(assert (= r (fp #b0 #b11110000101 #b1101010000101010110100110011110110111001110111011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
