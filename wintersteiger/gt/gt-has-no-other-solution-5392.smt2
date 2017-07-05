(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1878781498563739660312421619892120361328125p-190 {+ 846127965684224 -190 (7.5696e-058)}
; Y = 1.88742590760551731676741837873123586177825927734375p787 {+ 3996610986811132 787 (1.5363e+237)}
; 1.1878781498563739660312421619892120361328125p-190 > 1.88742590760551731676741837873123586177825927734375p787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000001 #b0011000000011000110010000100110101000100001000000000)))
(assert (= y (fp #b0 #b11100010010 #b1110001100101110010110000010001011001001111011111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
