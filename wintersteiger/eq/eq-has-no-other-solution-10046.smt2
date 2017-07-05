(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2964859453366999186840757829486392438411712646484375p-595 {- 1335253992938951 -595 (-9.99817e-180)}
; Y = 1.2329374455637094332161041165818460285663604736328125p299 {+ 1049056993041357 299 (1.25577e+090)}
; -1.2964859453366999186840757829486392438411712646484375p-595 = 1.2329374455637094332161041165818460285663604736328125p299 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110101100 #b0100101111100110100000001011111011110001110111000111)))
(assert (= y (fp #b0 #b10100101010 #b0011101110100001110010011101011010110101101111001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
