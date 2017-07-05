(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.289174699783952160458966318401508033275604248046875p779 {- 1302327070191982 779 (-4.099e+234)}
; Y = 1.397364090109714851450917194597423076629638671875p385 {+ 1789568768148528 385 (1.10118e+116)}
; -1.289174699783952160458966318401508033275604248046875p779 * 1.397364090109714851450917194597423076629638671875p385 == -oo
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
(assert (= x (fp #b1 #b11100001010 #b0100101000000111010110100110011001100111000101101110)))
(assert (= y (fp #b0 #b10110000000 #b0110010110111001101001110010101110100000010000110000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
