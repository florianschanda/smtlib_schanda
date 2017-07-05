(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.073608277272691591264219823642633855342864990234375p430 {- 331502210096678 430 (-2.97676e+129)}
; Y = -1.420265104522080878979295448516495525836944580078125p-1018 {- 1892705768122466 -1018 (-5.05631e-307)}
; -1.073608277272691591264219823642633855342864990234375p430 < -1.420265104522080878979295448516495525836944580078125p-1018 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101101 #b0001001011010111111111011111011110011001111000100110)))
(assert (= y (fp #b1 #b00000000101 #b0110101110010110011111100110111110010010100001100010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
