(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1098794760187831176523332032957114279270172119140625p288 {+ 494853167253857 288 (5.51969e+086)}
; 1.1098794760187831176523332032957114279270172119140625p288 S == 1.0535081755823174631814254098571836948394775390625p144
; [HW: 1.0535081755823174631814254098571836948394775390625p144] 

; mpf : + 240979399613800 144
; mpfd: + 240979399613800 144 (2.3494e+043) class: Pos. norm. non-zero
; hwf : + 240979399613800 144 (2.3494e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011111 #b0001110000100001000011111011010000000000100101100001)))
(assert (= r (fp #b0 #b10010001111 #b0000110110110010101101100011100000110001110101101000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
