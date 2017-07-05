(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7386575500366172608579518055194057524204254150390625p420 {- 3326617867099313 420 (-4.70774e+126)}
; Y = 1.33757235317910616601011497550643980503082275390625p-274 {+ 1520290723988004 -274 (4.40655e-083)}
; -1.7386575500366172608579518055194057524204254150390625p420 < 1.33757235317910616601011497550643980503082275390625p-274 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100011 #b1011110100011000101010010100010001011001110010110001)))
(assert (= y (fp #b0 #b01011101101 #b0101011001101011001001000100100011110000001000100100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
