(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2127373854621481541471439413726329803466796875p428 {+ 958084009895104 428 (8.4063e+128)}
; 1.2127373854621481541471439413726329803466796875p428 S == 1.1012435631876120734062851624912582337856292724609375p214
; [HW: 1.1012435631876120734062851624912582337856292724609375p214] 

; mpf : + 455960473445391 214
; mpfd: + 455960473445391 214 (2.89936e+064) class: Pos. norm. non-zero
; hwf : + 455960473445391 214 (2.89936e+064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101011 #b0011011001110101111101010001000100110010010011000000)))
(assert (= r (fp #b0 #b10011010101 #b0001100111101011000110010010000011010010010000001111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
