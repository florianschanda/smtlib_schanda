(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6208871114972047688951306554372422397136688232421875p37 {- 2796226963977955 37 (-2.22773e+011)}
; Y = -1.2498140363343015479813402635045349597930908203125p-33 {- 1125062400947080 -33 (-1.45498e-010)}
; -1.6208871114972047688951306554372422397136688232421875p37 % -1.2498140363343015479813402635045349597930908203125p-33 == -1.7876589240986504592001438140869140625p-35
; [HW: -1.7876589240986504592001438140869140625p-35] 

; mpf : - 3547300437065728 -35
; mpfd: - 3547300437065728 -35 (-5.20277e-011) class: Neg. norm. non-zero
; hwf : - 3547300437065728 -35 (-5.20277e-011) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100100 #b1001111011110010011101010010111001100011011011100011)))
(assert (= y (fp #b1 #b01111011110 #b0011111111110011110100000000110000100011001110001000)))
(assert (= r (fp #b1 #b01111011100 #xc9a403e768000)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
