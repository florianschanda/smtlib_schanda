(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5544206743471276066514974445453844964504241943359375 38 {- 2496888742396223 38 (-4.27276e+011)}
; -1.5544206743471276066514974445453844964504241943359375 38 I == -1.55442067434705677442252635955810546875 38
; [HW: -1.55442067434705677442252635955810546875 38] 

; mpf : - 2496888742395904 38
; mpfd: - 2496888742395904 38 (-4.27276e+011) class: Neg. norm. non-zero
; hwf : - 2496888742395904 38 (-4.27276e+011) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100101 #b1000110111101110100000110110100010001100000100111111)))
(assert (= r (fp #b1 #b10000100101 #b1000110111101110100000110110100010001100000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
