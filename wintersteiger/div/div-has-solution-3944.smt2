(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.107990077555619290450295011396519839763641357421875p-1006 {+ 486344073039198 -1006 (1.6157e-303)}
; Y = 1.7097436050346690450396636151708662509918212890625p811 {+ 3196401035162728 811 (2.33484e+244)}
; 1.107990077555619290450295011396519839763641357421875p-1006 / 1.7097436050346690450396636151708662509918212890625p811 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010001 #b0001101110100101001111001101101101100100110101011110)))
(assert (= y (fp #b0 #b11100101010 #b1011010110110001110000011100010000101011010001101000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
