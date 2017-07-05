(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.800495212694710911449647028348408639430999755859375p1003 {+ 3605109941603766 1003 (1.5434e+302)}
; 1.800495212694710911449647028348408639430999755859375p1003 | == 1.800495212694710911449647028348408639430999755859375p1003
; [HW: 1.800495212694710911449647028348408639430999755859375p1003] 

; mpf : + 3605109941603766 1003
; mpfd: + 3605109941603766 1003 (1.5434e+302) class: Pos. norm. non-zero
; hwf : + 3605109941603766 1003 (1.5434e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101010 #b1100110011101101010000010001011100100000110110110110)))
(assert (= r (fp #b0 #b11111101010 #b1100110011101101010000010001011100100000110110110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
