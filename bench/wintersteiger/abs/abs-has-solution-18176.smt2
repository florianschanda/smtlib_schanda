(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.011870021885733716970889872754923999309539794921875p586 {+ 53457826141470 586 (2.56273e+176)}
; 1.011870021885733716970889872754923999309539794921875p586 | == 1.011870021885733716970889872754923999309539794921875p586
; [HW: 1.011870021885733716970889872754923999309539794921875p586] 

; mpf : + 53457826141470 586
; mpfd: + 53457826141470 586 (2.56273e+176) class: Pos. norm. non-zero
; hwf : + 53457826141470 586 (2.56273e+176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001001 #b0000001100001001111010011110101111001101010100011110)))
(assert (= r (fp #b0 #b11001001001 #b0000001100001001111010011110101111001101010100011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
