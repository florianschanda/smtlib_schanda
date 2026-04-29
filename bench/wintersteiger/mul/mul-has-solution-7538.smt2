(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3637438790915898945144135723239742219448089599609375p466 {+ 1638156798335183 466 (2.59843e+140)}
; Y = -1.4582721165720868850002034378121607005596160888671875p917 {- 2063874133428339 917 (-1.61564e+276)}
; 1.3637438790915898945144135723239742219448089599609375p466 * -1.4582721165720868850002034378121607005596160888671875p917 == -oo
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
(assert (= x (fp #b0 #b10111010001 #b0101110100011110010100011010000011010001100011001111)))
(assert (= y (fp #b1 #b11110010100 #b0111010101010001010100100100100101011000100001110011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
