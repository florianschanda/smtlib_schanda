(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.631420959743299814448391771293245255947113037109375p-112 {- 2843667199013846 -112 (-3.142e-034)}
; Y = -1.200556536815906572002177199465222656726837158203125p683 {- 903226344470834 683 (-4.81803e+205)}
; -1.631420959743299814448391771293245255947113037109375p-112 < -1.200556536815906572002177199465222656726837158203125p683 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110001111 #b1010000110100100110011011101010000011011001111010110)))
(assert (= y (fp #b1 #b11010101010 #b0011001101010111101011000101011010011111100100110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
