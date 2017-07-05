(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.458650259176842656216877003316767513751983642578125p-761 {- 2065577136322210 -761 (-1.20261e-229)}
; Y = -1.556178755787303913393770926631987094879150390625p827 {- 2504806437315088 827 (-1.39273e+249)}
; -1.458650259176842656216877003316767513751983642578125p-761 < -1.556178755787303913393770926631987094879150390625p827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100000110 #b0111010101101010000110100111011101110111011010100010)))
(assert (= y (fp #b1 #b11100111010 #b1000111001100001101110110001111011010110001000010000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
