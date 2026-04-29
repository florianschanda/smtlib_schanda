(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9723203018690613763652663692482747137546539306640625p-811 {+ 4378941349182273 -811 (1.44428e-244)}
; 1.9723203018690613763652663692482747137546539306640625p-811 | == 1.9723203018690613763652663692482747137546539306640625p-811
; [HW: 1.9723203018690613763652663692482747137546539306640625p-811] 

; mpf : + 4378941349182273 -811
; mpfd: + 4378941349182273 -811 (1.44428e-244) class: Pos. norm. non-zero
; hwf : + 4378941349182273 -811 (1.44428e-244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010100 #b1111100011101001111110111011100111000011101101000001)))
(assert (= r (fp #b0 #b00011010100 #b1111100011101001111110111011100111000011101101000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
