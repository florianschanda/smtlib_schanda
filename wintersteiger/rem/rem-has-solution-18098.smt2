(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.077587038381967676770045727607794106006622314453125p-164 {+ 349420957145810 -164 (4.60822e-050)}
; Y = 1.32512836686041968192739659571088850498199462890625p367 {+ 1464247991840164 367 (3.98351e+110)}
; 1.077587038381967676770045727607794106006622314453125p-164 % 1.32512836686041968192739659571088850498199462890625p367 == 1.077587038381967676770045727607794106006622314453125p-164
; [HW: 1.077587038381967676770045727607794106006622314453125p-164] 

; mpf : + 349420957145810 -164
; mpfd: + 349420957145810 -164 (4.60822e-050) class: Pos. norm. non-zero
; hwf : + 349420957145810 -164 (4.60822e-050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011011 #b0001001111011100101111101000000001110001101011010010)))
(assert (= y (fp #b0 #b10101101110 #b0101001100111011100111001101011010101010110110100100)))
(assert (= r (fp #b0 #b01101011011 #x13dcbe8071ad2)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
