(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4434013673652525966417670133523643016815185546875p363 {- 1996902232841720 363 (-2.71191e+109)}
; -1.4434013673652525966417670133523643016815185546875p363 | == 1.4434013673652525966417670133523643016815185546875p363
; [HW: 1.4434013673652525966417670133523643016815185546875p363] 

; mpf : + 1996902232841720 363
; mpfd: + 1996902232841720 363 (2.71191e+109) class: Pos. norm. non-zero
; hwf : + 1996902232841720 363 (2.71191e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101101010 #b0111000110000010110000001000001111010101110111111000)))
(assert (= r (fp #b0 #b10101101010 #b0111000110000010110000001000001111010101110111111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
