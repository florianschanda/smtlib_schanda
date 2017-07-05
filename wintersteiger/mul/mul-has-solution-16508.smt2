(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.775561188672504453478495634044520556926727294921875p745 {- 3492817080308510 745 (-3.28611e+224)}
; Y = 1.1538600324014669507022290417808108031749725341796875p754 {+ 692923984590459 754 (1.09338e+227)}
; -1.775561188672504453478495634044520556926727294921875p745 * 1.1538600324014669507022290417808108031749725341796875p754 == -oo
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
(assert (= x (fp #b1 #b11011101000 #b1100011010001011001011011001010101100101001100011110)))
(assert (= y (fp #b0 #b11011110001 #b0010011101100011010111101111111101010011011001111011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
