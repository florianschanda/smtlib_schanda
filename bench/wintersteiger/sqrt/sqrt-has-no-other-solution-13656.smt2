(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.845639169418442637748967172228731215000152587890625p30 {+ 3808420248282794 30 (1.98174e+009)}
; 1.845639169418442637748967172228731215000152587890625p30 S == 1.3585430318611340094747674811515025794506072998046875p15
; [HW: 1.3585430318611340094747674811515025794506072998046875p15] 

; mpf : + 1614734264686091 15
; mpfd: + 1614734264686091 15 (44516.7) class: Pos. norm. non-zero
; hwf : + 1614734264686091 15 (44516.7) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011101 #b1101100001111011110011110000000011011110011010101010)))
(assert (= r (fp #b0 #b10000001110 #b0101101111001001011110011110010000001101011000001011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
