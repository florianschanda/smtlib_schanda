(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.333919233166792395195443532429635524749755859375p-164 {- 1503838534061808 -164 (-5.7044e-050)}
; Y = -1.2079041696080567991344878464587964117527008056640625p-273 {- 936317140775617 -273 (-7.95873e-083)}
; -1.333919233166792395195443532429635524749755859375p-164 = -1.2079041696080567991344878464587964117527008056640625p-273 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011011 #b0101010101111011101110110001100111110100111011110000)))
(assert (= y (fp #b1 #b01011101110 #b0011010100111001001101010010100100101011001011000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
