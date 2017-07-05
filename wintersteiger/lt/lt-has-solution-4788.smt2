(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2736956692943273150575578256393782794475555419921875p681 {+ 1232615714246851 681 (1.27789e+205)}
; Y = -1.1329549267262997158667303665424697101116180419921875p-893 {- 598775758461635 -893 (-1.71564e-269)}
; 1.2736956692943273150575578256393782794475555419921875p681 < -1.1329549267262997158667303665424697101116180419921875p-893 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101000 #b0100011000010000111010110101110010101101000011000011)))
(assert (= y (fp #b1 #b00010000010 #b0010001000001001010101011000011000100001101011000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
