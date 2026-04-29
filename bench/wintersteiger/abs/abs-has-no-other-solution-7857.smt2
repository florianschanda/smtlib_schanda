(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.41442343223650279782077632262371480464935302734375p140 {+ 1866397214993916 140 (1.97142e+042)}
; 1.41442343223650279782077632262371480464935302734375p140 | == 1.41442343223650279782077632262371480464935302734375p140
; [HW: 1.41442343223650279782077632262371480464935302734375p140] 

; mpf : + 1866397214993916 140
; mpfd: + 1866397214993916 140 (1.97142e+042) class: Pos. norm. non-zero
; hwf : + 1866397214993916 140 (1.97142e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001011 #b0110101000010111101001110111000000100110110111111100)))
(assert (= r (fp #b0 #b10010001011 #b0110101000010111101001110111000000100110110111111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
