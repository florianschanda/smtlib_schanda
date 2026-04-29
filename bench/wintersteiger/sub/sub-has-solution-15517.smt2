(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.6795701274472800701431651759776286780834197998046875p984 {- 3060511772743691 984 (-2.74608e+296)}
; -oo - -1.6795701274472800701431651759776286780834197998046875p984 == -oo
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
(assert (= y (fp #b1 #b11111010111 #b1010110111111000010011101101000010111001100000001011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
