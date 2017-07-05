(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.691610324499695394706577644683420658111572265625p462 {+ 3114735999702416 462 (2.01446e+139)}
; Y = -1.5634370613101127300836878930567763745784759521484375p977 {- 2537494939362951 977 (-1.99704e+294)}
; 1.691610324499695394706577644683420658111572265625p462 = -1.5634370613101127300836878930567763745784759521484375p977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001101 #b1011000100001101010111111100110101001101010110010000)))
(assert (= y (fp #b1 #b11111010000 #b1001000000111101011010010100011110101110011010000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
