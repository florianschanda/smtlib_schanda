(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.585464908821953233797330540255643427371978759765625p-34 {- 2636699545209050 -34 (-9.22862e-011)}
; Y = -1.5515150818716796354834741578088141977787017822265625p582 {- 2483803117206505 582 (-2.45592e+175)}
; -1.585464908821953233797330540255643427371978759765625p-34 > -1.5515150818716796354834741578088141977787017822265625p582 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011101 #b1001010111100001000001110011110001011000100011011010)))
(assert (= y (fp #b1 #b11001000101 #b1000110100110000000101111010011111100011101111101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
