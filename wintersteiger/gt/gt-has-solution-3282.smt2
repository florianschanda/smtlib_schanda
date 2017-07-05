(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.051038143265567992301612321170978248119354248046875p-703 {- 229855362992494 -703 (-2.49765e-212)}
; Y = 1.944650184898982114845011892612092196941375732421875p914 {+ 4254326220706526 914 (2.69313e+275)}
; -1.051038143265567992301612321170978248119354248046875p-703 > 1.944650184898982114845011892612092196941375732421875p914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000000 #b0000110100010000110101011111010000101100100101101110)))
(assert (= y (fp #b0 #b11110010001 #b1111000111010100100110000011001001001101001011011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
