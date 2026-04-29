(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0100088888343490278742820009938441216945648193359375p467 {+ 45076028024767 467 (3.84887e+140)}
; 1.0100088888343490278742820009938441216945648193359375p467 | == 1.0100088888343490278742820009938441216945648193359375p467
; [HW: 1.0100088888343490278742820009938441216945648193359375p467] 

; mpf : + 45076028024767 467
; mpfd: + 45076028024767 467 (3.84887e+140) class: Pos. norm. non-zero
; hwf : + 45076028024767 467 (3.84887e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010010 #b0000001010001111111100010100101000110110011110111111)))
(assert (= r (fp #b0 #b10111010010 #b0000001010001111111100010100101000110110011110111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
