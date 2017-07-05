(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0527374197282510781548126033158041536808013916015625p171 {- 237508223836633 171 (-3.15101e+051)}
; Y = -1.5958645482863202946788305780501104891300201416015625p-495 {- 2683535357625561 -495 (-1.56008e-149)}
; -1.0527374197282510781548126033158041536808013916015625p171 % -1.5958645482863202946788305780501104891300201416015625p-495 == -1.15372412155247960896531367325223982334136962890625p-497
; [HW: -1.15372412155247960896531367325223982334136962890625p-497] 

; mpf : - 692311896541604 -497
; mpfd: - 692311896541604 -497 (-2.81964e-150) class: Neg. norm. non-zero
; hwf : - 692311896541604 -497 (-2.81964e-150) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101010 #b0000110110000000001100110001010100000010000111011001)))
(assert (= y (fp #b1 #b01000010000 #b1001100010001010100101000011101110111100010011011001)))
(assert (= r (fp #b1 #b01000001110 #x275a76caac9a4)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
