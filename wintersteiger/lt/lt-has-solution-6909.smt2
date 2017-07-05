(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3137178659223363030861264633131213486194610595703125p618 {+ 1412859664067301 618 (1.42902e+186)}
; Y = 1.4310967663780187475452976286760531365871429443359375p-876 {+ 1941487236420671 -876 (2.84049e-264)}
; 1.3137178659223363030861264633131213486194610595703125p618 < 1.4310967663780187475452976286760531365871429443359375p-876 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101001 #b0101000001001111110100000110011001001110101011100101)))
(assert (= y (fp #b0 #b00010010011 #b0110111001011100010110111001000100000001010000111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
