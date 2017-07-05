(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0456239983488730960203838549205102026462554931640625p-718 {+ 205472221963137 -718 (7.58296e-217)}
; Y = 1.23858927693101517064633299014531075954437255859375p476 {+ 1074510578681116 476 (2.4166e+143)}
; 1.0456239983488730960203838549205102026462554931640625p-718 = 1.23858927693101517064633299014531075954437255859375p476 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110001 #b0000101110101110000000111010110011010010001110000001)))
(assert (= y (fp #b0 #b10111011011 #b0011110100010100001011111101010110011000010100011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
