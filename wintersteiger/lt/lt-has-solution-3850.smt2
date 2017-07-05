(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3691593448970384994112237109220586717128753662109375p-789 {- 1662545888118639 -789 (-4.20521e-238)}
; Y = 1.497772427244109305632946416153572499752044677734375p100 {+ 2241767717851878 100 (1.89865e+030)}
; -1.3691593448970384994112237109220586717128753662109375p-789 < 1.497772427244109305632946416153572499752044677734375p100 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101010 #b0101111010000001001110100001000101011000011101101111)))
(assert (= y (fp #b0 #b10001100011 #b0111111101101110000000111000011111011101001011100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
