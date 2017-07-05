(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7638542821634064505786909649032168090343475341796875p900 {- 3440093860516475 900 (-1.49094e+271)}
; Y = 1.31848138474421006094416952691972255706787109375p508 {+ 1434312645658464 508 (1.10487e+153)}
; -1.7638542821634064505786909649032168090343475341796875p900 < 1.31848138474421006094416952691972255706787109375p508 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000011 #b1100001110001011111101000100100011001101001001111011)))
(assert (= y (fp #b0 #b10111111011 #b0101000110000111111111101111101111011100011101100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
