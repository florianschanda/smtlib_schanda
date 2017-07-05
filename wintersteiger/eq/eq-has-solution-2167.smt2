(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.307777258578862955573640647344291210174560546875p-222 {- 1386105547048880 -222 (-1.94033e-067)}
; Y = -1.6470260613972238505908762817853130400180816650390625p35 {- 2913946329007537 35 (-5.65914e+010)}
; -1.307777258578862955573640647344291210174560546875p-222 = -1.6470260613972238505908762817853130400180816650390625p35 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100001 #b0100111011001010011111011000110000001100011110110000)))
(assert (= y (fp #b1 #b10000100010 #b1010010110100011011111111111110101011100010110110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
