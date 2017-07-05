(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8285429783650573032360853176214732229709625244140625p398 {- 3731425848625313 398 (-1.18044e+120)}
; Y = -1.118815917008009197530782330431975424289703369140625p-625 {- 535099319562954 -625 (-8.03547e-189)}
; -1.8285429783650573032360853176214732229709625244140625p398 > -1.118815917008009197530782330431975424289703369140625p-625 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001101 #b1101010000011011011001001000001101101000100010100001)))
(assert (= y (fp #b1 #b00110001110 #b0001111001101010101110000100110111001011001011001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
