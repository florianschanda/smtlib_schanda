(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.535608467405125576732416448066942393779754638671875p543 {+ 2412166094222206 543 (4.42148e+163)}
; Y = 1.046482365788893531544090365059673786163330078125p154 {+ 209337965246160 154 (2.38974e+046)}
; 1.535608467405125576732416448066942393779754638671875p543 + 1.046482365788893531544090365059673786163330078125p154 == 1.535608467405125576732416448066942393779754638671875p543
; [HW: 1.535608467405125576732416448066942393779754638671875p543] 

; mpf : + 2412166094222206 543
; mpfd: + 2412166094222206 543 (4.42148e+163) class: Pos. norm. non-zero
; hwf : + 2412166094222206 543 (4.42148e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011110 #b1000100100011101101000101111001011110111001101111110)))
(assert (= y (fp #b0 #b10010011001 #b0000101111100110010001001011000011100111011011010000)))
(assert (= r (fp #b0 #b11000011110 #b1000100100011101101000101111001011110111001101111110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
