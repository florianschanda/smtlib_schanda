(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.334287255155435669706776025122962892055511474609375p875 {+ 1505495957752726 875 (3.36121e+263)}
; Y = 1.442521631136203463796618962078355252742767333984375p-145 {+ 1992940253088390 -145 (3.23425e-044)}
; 1.334287255155435669706776025122962892055511474609375p875 > 1.442521631136203463796618962078355252742767333984375p-145 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101010 #b0101010110010011110110010111110001011100101110010110)))
(assert (= y (fp #b0 #b01101101110 #b0111000101001001000110001111110110000000101010000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
