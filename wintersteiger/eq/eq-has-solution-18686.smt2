(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3086047337788200284336426193476654589176177978515625p172 {- 1389832164051065 172 (-7.83371e+051)}
; Y = 1.598247383678394140105183396372012794017791748046875p320 {+ 2694266694209390 320 (3.41384e+096)}
; -1.3086047337788200284336426193476654589176177978515625p172 = 1.598247383678394140105183396372012794017791748046875p320 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101011 #b0100111100000000101110000100011011111000100001111001)))
(assert (= y (fp #b0 #b10100111111 #b1001100100100110101111011001001111010000111101101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
