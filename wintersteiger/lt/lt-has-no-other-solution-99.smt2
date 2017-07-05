(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.645699197587507267570572366821579635143280029296875p158 {+ 2907970665648526 158 (6.01298e+047)}
; Y = 1.7129193743168702468437913921661674976348876953125p-299 {+ 3210703428518664 -299 (1.68178e-090)}
; 1.645699197587507267570572366821579635143280029296875p158 < 1.7129193743168702468437913921661674976348876953125p-299 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010011101 #b1010010101001100100010101110100010110001000110001110)))
(assert (= y (fp #b0 #b01011010100 #b1011011010000001111000100101010101100000001100001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
