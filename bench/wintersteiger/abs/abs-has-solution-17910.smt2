(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8081679270039272555692377864033915102481842041015625p-977 {+ 3639664774907673 -977 (1.41558e-294)}
; 1.8081679270039272555692377864033915102481842041015625p-977 | == 1.8081679270039272555692377864033915102481842041015625p-977
; [HW: 1.8081679270039272555692377864033915102481842041015625p-977] 

; mpf : + 3639664774907673 -977
; mpfd: + 3639664774907673 -977 (1.41558e-294) class: Pos. norm. non-zero
; hwf : + 3639664774907673 -977 (1.41558e-294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101110 #b1100111011100100000101111110000000101000011100011001)))
(assert (= r (fp #b0 #b00000101110 #b1100111011100100000101111110000000101000011100011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
