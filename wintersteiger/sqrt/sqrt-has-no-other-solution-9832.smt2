(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9229071901396455057664525156724266707897186279296875p-543 {+ 4156404477610459 -543 (6.67837e-164)}
; 1.9229071901396455057664525156724266707897186279296875p-543 S == 1.9610748023161408415404594052233733236789703369140625p-272
; [HW: 1.9610748023161408415404594052233733236789703369140625p-272] 

; mpf : + 4328296121586145 -272
; mpfd: + 4328296121586145 -272 (2.58425e-082) class: Pos. norm. non-zero
; hwf : + 4328296121586145 -272 (2.58425e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100000 #b1110110001000011101001010100011011100100100111011011)))
(assert (= r (fp #b0 #b01011101111 #b1111011000001000111111111000110011110101000111100001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
