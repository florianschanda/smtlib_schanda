(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8594704016856933304069343648734502494335174560546875p1005 {+ 3870710580767659 1005 (6.3758e+302)}
; Y = -1.8489595231606139602575922253890894353389739990234375p-497 {- 3823373792158775 -497 (-4.51876e-150)}
; 1.8594704016856933304069343648734502494335174560546875p1005 M -1.8489595231606139602575922253890894353389739990234375p-497 == 1.8594704016856933304069343648734502494335174560546875p1005
; [HW: 1.8594704016856933304069343648734502494335174560546875p1005] 

; mpf : + 3870710580767659 1005
; mpfd: + 3870710580767659 1005 (6.3758e+302) class: Pos. norm. non-zero
; hwf : + 3870710580767659 1005 (6.3758e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101100 #b1101110000000110010000001001001100011110101110101011)))
(assert (= y (fp #b1 #b01000001110 #b1101100101010101011010010100101110011010010000110111)))
(assert (= r (fp #b0 #b11111101100 #b1101110000000110010000001001001100011110101110101011)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
