(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5519496507859635858750380066339857876300811767578125p-234 {- 2485760241606941 -234 (-5.62158e-071)}
; Y = 1.7996084048087686024786080452031455934047698974609375p-827 {+ 3601116113939087 -827 (2.01081e-249)}
; -1.5519496507859635858750380066339857876300811767578125p-234 = 1.7996084048087686024786080452031455934047698974609375p-827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010101 #b1000110101001100100100101000001100101010000100011101)))
(assert (= y (fp #b0 #b00011000100 #b1100110010110011001000101110110001000010101010001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
