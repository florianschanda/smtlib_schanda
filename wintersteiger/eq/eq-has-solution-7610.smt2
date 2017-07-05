(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.614791604076699638170566686312668025493621826171875p-110 {- 2768775239030334 -110 (-1.24399e-033)}
; Y = -1.440513897803288756449546781368553638458251953125p-904 {- 1983898225998416 -904 (-1.06513e-272)}
; -1.614791604076699638170566686312668025493621826171875p-110 = -1.440513897803288756449546781368553638458251953125p-904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010001 #b1001110101100010111110111000100101011101011000111110)))
(assert (= y (fp #b1 #b00001110111 #b0111000011000101100001001101000001111111101001010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
