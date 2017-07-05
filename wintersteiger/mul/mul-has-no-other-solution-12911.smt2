(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7911543146462987063927130293450318276882171630859375p574 {- 3563042276633631 574 (-1.10752e+173)}
; Y = 1.2735571903751423672446208001929335296154022216796875p666 {+ 1231992060638011 666 (3.89938e+200)}
; -1.7911543146462987063927130293450318276882171630859375p574 * 1.2735571903751423672446208001929335296154022216796875p666 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111101 #b1100101010001001000101101101001101111110110000011111)))
(assert (= y (fp #b0 #b11010011001 #b0100011000000111110110000001001000111111001100111011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
