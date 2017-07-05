(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.692611890880268532555419369600713253021240234375p285 {- 3119246653680752 285 (-1.05222e+086)}
; Y = 1.68250227422647835595626020221970975399017333984375p-329 {+ 3073716987885884 -329 (1.53846e-099)}
; -1.692611890880268532555419369600713253021240234375p285 > 1.68250227422647835595626020221970975399017333984375p-329 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011100 #b1011000101001111000000110100110000100110110001110000)))
(assert (= y (fp #b0 #b01010110110 #b1010111010111000011110000001001100111111100100111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
