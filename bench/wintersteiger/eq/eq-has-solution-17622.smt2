(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.01588039405654928515332358074374496936798095703125p-1021 {- 71518936755572 -1021 (-4.52082e-308)}
; Y = -1.455772102905708020870179097983054816722869873046875p709 {- 2052615072812014 709 (-3.92067e+213)}
; -1.01588039405654928515332358074374496936798095703125p-1021 = -1.455772102905708020870179097983054816722869873046875p709 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000010 #b0000010000010000101111001100110100011110110101110100)))
(assert (= y (fp #b1 #b11011000100 #b0111010010101101011110110000010001101000101111101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
