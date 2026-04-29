(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.557071118973824663811456048279069364070892333984375p918 {- 2508825283829382 918 (-3.4502e+276)}
; Y = 1.5891882942810762191498952233814634382724761962890625p336 {+ 2653468182575313 336 (2.22461e+101)}
; -1.557071118973824663811456048279069364070892333984375p918 < 1.5891882942810762191498952233814634382724761962890625p336 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110010101 #b1000111010011100001101100111110110001001111010000110)))
(assert (= y (fp #b0 #b10101001111 #b1001011011010101000010110100011100011111100011010001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
