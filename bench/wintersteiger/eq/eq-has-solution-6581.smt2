(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = NaN {+ 1262095277904082 1024 (1.#SNAN)}
; Y = -1.333143743649180645860496952082030475139617919921875p207 {- 1500346039759262 207 (-2.74212e+062)}
; NaN = -1.333143743649180645860496952082030475139617919921875p207 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b10011001110 #b0101010101001000111010001000101111010111000110011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
