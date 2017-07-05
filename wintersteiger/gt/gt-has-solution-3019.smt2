(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.472959066937887140369412009022198617458343505859375p802 {- 2130018277622966 802 (-3.92868e+241)}
; Y = 1.2084952723567379262448184817912988364696502685546875p48 {+ 938979230894315 48 (3.40161e+014)}
; -1.472959066937887140369412009022198617458343505859375p802 > 1.2084952723567379262448184817912988364696502685546875p48 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100001 #b0111100100010011110110000110110011011000010010110110)))
(assert (= y (fp #b0 #b10000101111 #b0011010101011111111100100011100000100100100011101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
