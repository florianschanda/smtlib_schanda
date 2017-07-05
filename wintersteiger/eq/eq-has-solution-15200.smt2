(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0814967766731833354043601502780802547931671142578125p-801 {+ 367028853057245 -801 (8.10959e-242)}
; Y = 1.6472916247393898370177112155943177640438079833984375p-974 {+ 2915142319976359 -974 (1.0317e-293)}
; 1.0814967766731833354043601502780802547931671142578125p-801 = 1.6472916247393898370177112155943177640438079833984375p-974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011110 #b0001010011011100111110010000011010001010011011011101)))
(assert (= y (fp #b0 #b00000110001 #b1010010110110100111001110110011100111010111110100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
