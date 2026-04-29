(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.208254734363055860058011603541672229766845703125p942 {+ 937895944075600 942 (4.49174e+283)}
; Y = -1.559299750449649746286695517483167350292205810546875p480 {- 2518862147713454 480 (-4.86774e+144)}
; 1.208254734363055860058011603541672229766845703125p942 * -1.559299750449649746286695517483167350292205810546875p480 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101101 #b0011010101010000001011101010100101010011100101010000)))
(assert (= y (fp #b1 #b10111011111 #b1000111100101110010001001011100011010111100110101110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
