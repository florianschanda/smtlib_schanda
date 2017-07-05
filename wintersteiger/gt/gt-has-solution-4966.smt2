(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.247584830294797608729595594923011958599090576171875p996 {- 1115022949458238 996 (-8.35499e+299)}
; Y = 1.86247941633497049451761995442211627960205078125p294 {+ 3884261978020896 294 (5.92803e+088)}
; -1.247584830294797608729595594923011958599090576171875p996 > 1.86247941633497049451761995442211627960205078125p294 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100011 #b0011111101100001101110000010110100011010000100111110)))
(assert (= y (fp #b0 #b10100100101 #b1101110011001011011100110111011010100001110000100000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
