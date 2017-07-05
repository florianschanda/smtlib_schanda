(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3912512798614204978520092481630854308605194091796875p841 {- 1762039118192123 841 (-2.04001e+253)}
; Y = -1.1858952966142883855837908413377590477466583251953125p-650 {- 837197988562037 -650 (-2.53834e-196)}
; -1.3912512798614204978520092481630854308605194091796875p841 < -1.1858952966142883855837908413377590477466583251953125p-650 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001000 #b0110010000101001000010110011101110000101110111111011)))
(assert (= y (fp #b1 #b00101110101 #b0010111110010110110101011000101101110000010001110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
