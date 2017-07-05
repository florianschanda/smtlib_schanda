(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.3877373434678814678733260734588839113712310791015625p89 {+ 1746213755559577 89 (8.58968e+026)}
; -zero < 1.3877373434678814678733260734588839113712310791015625p89 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10001011000 #b0110001101000010110000010010100110100001111010011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
