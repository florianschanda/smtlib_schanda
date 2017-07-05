(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7325397453031765593323143548332154750823974609375p593 {- 3299065723981464 593 (-5.61656e+178)}
; Y = -1.196006899314201010753322407254017889499664306640625p-714 {- 882736598713482 -714 (-1.38777e-215)}
; -1.7325397453031765593323143548332154750823974609375p593 < -1.196006899314201010753322407254017889499664306640625p-714 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010000 #b1011101110000111101110011000100100011000111010011000)))
(assert (= y (fp #b1 #b00100110101 #b0011001000101101100000100001011001011000010010001010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
