(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1399441967837116163053678974392823874950408935546875p743 {+ 630252632487787 743 (5.27437e+223)}
; Y = 1.946391764296475201945213484577834606170654296875p410 {+ 4262169597032112 410 (5.1467e+123)}
; 1.1399441967837116163053678974392823874950408935546875p743 < 1.946391764296475201945213484577834606170654296875p410 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100110 #b0010001111010011011000100000010001110011011101101011)))
(assert (= y (fp #b0 #b10110011001 #b1111001001000110101110110000110011011011011010110000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
