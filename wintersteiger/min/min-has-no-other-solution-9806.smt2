(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.76298173052123363646614961908198893070220947265625p898 {- 3436164237265924 898 (-3.72549e+270)}
; Y = 1.5144221166354758789651668848819099366664886474609375p578 {+ 2316751252790671 578 (1.49825e+174)}
; -1.76298173052123363646614961908198893070220947265625p898 m 1.5144221166354758789651668848819099366664886474609375p578 == -1.76298173052123363646614961908198893070220947265625p898
; [HW: -1.76298173052123363646614961908198893070220947265625p898] 

; mpf : - 3436164237265924 898
; mpfd: - 3436164237265924 898 (-3.72549e+270) class: Neg. norm. non-zero
; hwf : - 3436164237265924 898 (-3.72549e+270) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000001 #b1100001101010010110001010100110000001000110000000100)))
(assert (= y (fp #b0 #b11001000001 #b1000001110110001001010101111011101001001110110001111)))
(assert (= r (fp #b1 #b11110000001 #b1100001101010010110001010100110000001000110000000100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
