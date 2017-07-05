(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5487664704494916723120923052192665636539459228515625p627 {+ 2471424471829753 627 (8.62568e+188)}
; 1.5487664704494916723120923052192665636539459228515625p627 | == 1.5487664704494916723120923052192665636539459228515625p627
; [HW: 1.5487664704494916723120923052192665636539459228515625p627] 

; mpf : + 2471424471829753 627
; mpfd: + 2471424471829753 627 (8.62568e+188) class: Pos. norm. non-zero
; hwf : + 2471424471829753 627 (8.62568e+188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110010 #b1000110001111011111101011001101110111000110011111001)))
(assert (= r (fp #b0 #b11001110010 #b1000110001111011111101011001101110111000110011111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
