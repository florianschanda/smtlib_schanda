(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7226759815165395561820105285733006894588470458984375p652 {- 3254643281067495 652 (-3.21929e+196)}
; Y = -1.8399964885667803304869494240847416222095489501953125p940 {- 3783007872901877 940 (-1.71007e+283)}
; -1.7226759815165395561820105285733006894588470458984375p652 > -1.8399964885667803304869494240847416222095489501953125p940 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001011 #b1011100100000001010010110000101000110111110111100111)))
(assert (= y (fp #b1 #b11110101011 #b1101011100001010000000101000011100100110001011110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
