(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6852949711570086588352523904177360236644744873046875p534 {- 3086294176741579 534 (-9.4775e+160)}
; Y = -1.008092486954378586005987017415463924407958984375p325 {- 36445321232240 325 (-6.89047e+097)}
; -1.6852949711570086588352523904177360236644744873046875p534 < -1.008092486954378586005987017415463924407958984375p325 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010101 #b1010111101101111011111011100000100111011100011001011)))
(assert (= y (fp #b1 #b10101000100 #b0000001000010010010110010110011011001111111101110000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
