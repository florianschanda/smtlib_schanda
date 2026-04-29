(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.62549378109037956363636112655512988567352294921875p293 {+ 2816973559441196 293 (2.58687e+088)}
; Y = 1.3938628106233370562705431439098902046680450439453125p-917 {+ 1773800407158357 -917 (1.2581e-276)}
; 1.62549378109037956363636112655512988567352294921875p293 > 1.3938628106233370562705431439098902046680450439453125p-917 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100100 #b1010000000100000010111000100010110100010011100101100)))
(assert (= y (fp #b0 #b00001101010 #b0110010011010100001100010111001010111100111001010101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
