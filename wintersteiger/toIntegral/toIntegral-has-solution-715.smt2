(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4436317645514495922043352038599550724029541015625 733 {+ 1997939849523624 733 (6.52294e+220)}
; 1.4436317645514495922043352038599550724029541015625 733 I == 1.4436317645514495922043352038599550724029541015625 733
; [HW: 1.4436317645514495922043352038599550724029541015625 733] 

; mpf : + 1997939849523624 733
; mpfd: + 1997939849523624 733 (6.52294e+220) class: Pos. norm. non-zero
; hwf : + 1997939849523624 733 (6.52294e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011100 #b0111000110010001110110011111000000110111000110101000)))
(assert (= r (fp #b0 #b11011011100 #b0111000110010001110110011111000000110111000110101000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
