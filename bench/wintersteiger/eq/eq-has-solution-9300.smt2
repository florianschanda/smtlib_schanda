(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.452780765148673491893305254052393138408660888671875p-521 {- 2039143285204094 -521 (-2.11628e-157)}
; Y = -1.74578947810901041748365969397127628326416015625p-613 {- 3358737215708576 -613 (-5.13576e-185)}
; -1.452780765148673491893305254052393138408660888671875p-521 = -1.74578947810901041748365969397127628326416015625p-613 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110110 #b0111001111101001011100001011001010010010010001111110)))
(assert (= y (fp #b1 #b00110011010 #b1011111011101100000011110010101000101101110110100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
