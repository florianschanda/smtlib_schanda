(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8137086800921349283299832677585072815418243408203125p-931 {+ 3664618108451077 -931 (9.99175e-281)}
; Y = -1.9203779314319311399827938657836057245731353759765625p-1014 {- 4145013709036873 -1014 (-1.09388e-305)}
; 1.8137086800921349283299832677585072815418243408203125p-931 = -1.9203779314319311399827938657836057245731353759765625p-1014 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001011100 #b1101000001001111001101100100100101110111100100000101)))
(assert (= y (fp #b1 #b00000001001 #b1110101110011101111000110101101101110101110101001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
