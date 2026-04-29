(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5897134983889944503943070230889134109020233154296875p139 {- 2655833491600027 139 (-1.10787e+042)}
; Y = -1.3325935772093056019826917690807022154331207275390625p940 {- 1497868310385649 940 (-1.23849e+283)}
; -1.5897134983889944503943070230889134109020233154296875p139 * -1.3325935772093056019826917690807022154331207275390625p940 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010001010 #b1001011011110111011101101011110110010111001010011011)))
(assert (= y (fp #b1 #b11110101011 #b0101010100100100110110100100100011111001001111110001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
