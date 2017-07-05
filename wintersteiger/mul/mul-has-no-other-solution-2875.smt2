(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7897788079129224314556267927400767803192138671875p-643 {- 3556847545021752 -643 (-4.90357e-194)}
; Y = -1.9157306981578334781346484305686317384243011474609375p-182 {- 4124084430995343 -182 (-3.12518e-055)}
; -1.7897788079129224314556267927400767803192138671875p-643 * -1.9157306981578334781346484305686317384243011474609375p-182 == 1.71436710261555891321449962561018764972686767578125p-824
; [HW: 1.71436710261555891321449962561018764972686767578125p-824] 

; mpf : + 3217223417145172 -824
; mpfd: + 3217223417145172 -824 (1.53245e-248) class: Pos. norm. non-zero
; hwf : + 3217223417145172 -824 (1.53245e-248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111100 #b1100101000101110111100011010011100001111010100111000)))
(assert (= y (fp #b1 #b01101001001 #b1110101001101101010100111011100010000111111110001111)))
(assert (= r (fp #b0 #b00011000111 #b1011011011100000110000110010111100010010011101010100)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
