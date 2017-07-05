(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9369880305630060579602513826102949678897857666015625p666 {- 4219818945294169 666 (-5.93067e+200)}
; Y = -1.611214909847923149044390811468474566936492919921875p64 {- 2752667240234398 64 (-2.97217e+019)}
; -1.9369880305630060579602513826102949678897857666015625p666 M -1.611214909847923149044390811468474566936492919921875p64 == -1.611214909847923149044390811468474566936492919921875p64
; [HW: -1.611214909847923149044390811468474566936492919921875p64] 

; mpf : - 2752667240234398 64
; mpfd: - 2752667240234398 64 (-2.97217e+019) class: Neg. norm. non-zero
; hwf : - 2752667240234398 64 (-2.97217e+019) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011001 #b1110111111011110011100101001010000000010111101011001)))
(assert (= y (fp #b1 #b10000111111 #b1001110001111000100101001001000010011111110110011110)))
(assert (= r (fp #b1 #b10000111111 #b1001110001111000100101001001000010011111110110011110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
