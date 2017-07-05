(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4791615758579881312329007414518855512142181396484375p-153 {- 2157951894484295 -153 (-1.29547e-046)}
; Y = 1.4357670520275449543845525113283656537532806396484375p-714 {+ 1962520333131591 -714 (1.66597e-215)}
; -1.4791615758579881312329007414518855512142181396484375p-153 = 1.4357670520275449543845525113283656537532806396484375p-714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101100110 #b0111101010101010010101010100000111001111010101000111)))
(assert (= y (fp #b0 #b00100110101 #b0110111110001110011011011111010100100001111101000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
