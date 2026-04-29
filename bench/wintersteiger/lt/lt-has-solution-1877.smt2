(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.63414635469186375615890938206575810909271240234375p-756 {- 2855941286688636 -756 (-4.31136e-228)}
; +oo < -1.63414635469186375615890938206575810909271240234375p-756 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00100001011 #b1010001001010111011010100101111001000111011101111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
