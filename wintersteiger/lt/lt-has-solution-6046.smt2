(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.022485840983312410656935753650031983852386474609375p-238 {- 101267225073558 -238 (-2.31483e-072)}
; Y = -1.974930530563297370605368996621109545230865478515625p55 {- 4390696774156986 55 (-7.11544e+016)}
; -1.022485840983312410656935753650031983852386474609375p-238 < -1.974930530563297370605368996621109545230865478515625p55 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010001 #b0000010111000001101000011100111110100101011110010110)))
(assert (= y (fp #b1 #b10000110110 #b1111100110010101000011000001100010100100001010111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
