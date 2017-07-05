(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.1321585744761064606933587128878571093082427978515625p89 {+ 595189306764409 89 (7.00772e+026)}
; -oo * 1.1321585744761064606933587128878571093082427978515625p89 == -oo
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
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b10001011000 #b0010000111010101001001001111001101000010110001111001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
