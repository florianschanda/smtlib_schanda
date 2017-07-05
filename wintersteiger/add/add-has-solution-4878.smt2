(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1303596751187920954606624945881776511669158935546875p-273 {+ 587087784289131 -273 (7.4478e-083)}
; Y = 1.591520142403254123308897760580293834209442138671875p-452 {+ 2663969892909438 -452 (1.36853e-136)}
; 1.1303596751187920954606624945881776511669158935546875p-273 + 1.591520142403254123308897760580293834209442138671875p-452 == 1.1303596751187920954606624945881776511669158935546875p-273
; [HW: 1.1303596751187920954606624945881776511669158935546875p-273] 

; mpf : + 587087784289131 -273
; mpfd: + 587087784289131 -273 (7.4478e-083) class: Pos. norm. non-zero
; hwf : + 587087784289131 -273 (7.4478e-083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011101110 #b0010000101011111010000000110110101011010001101101011)))
(assert (= y (fp #b0 #b01000111011 #b1001011101101101110111010011001010001100000101111110)))
(assert (= r (fp #b0 #b01011101110 #b0010000101011111010000000110110101011010001101101011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
