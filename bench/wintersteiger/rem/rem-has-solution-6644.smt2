(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.49740763115623476409155045985244214534759521484375p-464 {+ 2240124822326460 -464 (3.14356e-140)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.49740763115623476409155045985244214534759521484375p-464 % -oo == 1.49740763115623476409155045985244214534759521484375p-464
; [HW: 1.49740763115623476409155045985244214534759521484375p-464] 

; mpf : + 2240124822326460 -464
; mpfd: + 2240124822326460 -464 (3.14356e-140) class: Pos. norm. non-zero
; hwf : + 2240124822326460 -464 (3.14356e-140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000101111 #b0111111101010110000110110100010010011000110010111100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b01000101111 #x7f561b4498cbc)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
