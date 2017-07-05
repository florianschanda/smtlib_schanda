(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.12369707554805842164569185115396976470947265625p-883 {- 557082103345056 -883 (-1.74246e-266)}
; Y = -1.9004177399538051407290595307131297886371612548828125p-910 {- 4055120998133741 -910 (-2.1956e-274)}
; -1.12369707554805842164569185115396976470947265625p-883 < -1.9004177399538051407290595307131297886371612548828125p-910 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001100 #b0001111110101010100111001000111000010110111110100000)))
(assert (= y (fp #b1 #b00001110001 #b1110011010000001110001101110100111010110111111101101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
