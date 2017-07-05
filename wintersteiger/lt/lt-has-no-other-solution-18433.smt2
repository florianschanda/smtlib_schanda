(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3033943996458436931362712130066938698291778564453125p687 {+ 1366366905191317 687 (8.36918e+206)}
; Y = 1.7526577808007477443652533111162483692169189453125p513 {+ 3389669301151752 513 (4.69986e+154)}
; 1.3033943996458436931362712130066938698291778564453125p687 < 1.7526577808007477443652533111162483692169189453125p513 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101110 #b0100110110101011010000010110000001000100101110010101)))
(assert (= y (fp #b0 #b11000000000 #b1100000010101110001011100010100110011110100000001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
