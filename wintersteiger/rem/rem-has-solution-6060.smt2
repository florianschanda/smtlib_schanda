(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.93985971284483138532550583477132022380828857421875p-113 {+ 4232751852548524 -113 (1.86802e-034)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.93985971284483138532550583477132022380828857421875p-113 % -oo == 1.93985971284483138532550583477132022380828857421875p-113
; [HW: 1.93985971284483138532550583477132022380828857421875p-113] 

; mpf : + 4232751852548524 -113
; mpfd: + 4232751852548524 -113 (1.86802e-034) class: Pos. norm. non-zero
; hwf : + 4232751852548524 -113 (1.86802e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001110 #b1111000010011010101001010110100101111111000110101100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b01110001110 #xf09aa5697f1ac)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
