(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3645571836131022980254101639729924499988555908203125p779 {- 1641819596275205 779 (-4.33869e+234)}
; Y = -1.698027022494567273014354213955812156200408935546875p462 {- 3143634238401070 462 (-2.0221e+139)}
; -1.3645571836131022980254101639729924499988555908203125p779 * -1.698027022494567273014354213955812156200408935546875p462 == +oo
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
(assert (= x (fp #b1 #b11100001010 #b0101110101010011100111101001110100100011111000000101)))
(assert (= y (fp #b1 #b10111001101 #b1011001010110001111001100010000101010110101000101110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
