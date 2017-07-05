(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9990385825264327390726748490124009549617767333984375p656 {- 4499269787994791 656 (-5.97721e+197)}
; Y = -1.0551429313728870607036469664308242499828338623046875p-368 {- 248341685183051 -368 (-1.75498e-111)}
; -1.9990385825264327390726748490124009549617767333984375p656 < -1.0551429313728870607036469664308242499828338623046875p-368 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001111 #b1111111111000000111111100001011101100100101010100111)))
(assert (= y (fp #b1 #b01010001111 #b0000111000011101110110001101111011011010001001001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
