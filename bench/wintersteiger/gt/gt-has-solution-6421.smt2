(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9715809620640285526604884580592624843120574951171875p-378 {- 4375611658711827 -378 (-3.2024e-114)}
; Y = -1.7737758163663930321973793979850597679615020751953125p-6 {- 3484776478255989 -6 (-0.0277152)}
; -1.9715809620640285526604884580592624843120574951171875p-378 > -1.7737758163663930321973793979850597679615020751953125p-6 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000101 #b1111100010111001100001111010100101111011001100010011)))
(assert (= y (fp #b1 #b01111111001 #b1100011000010110001011000000000110111010101101110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
