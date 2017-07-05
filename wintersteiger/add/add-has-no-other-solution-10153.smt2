(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9345368363521904253587990751839242875576019287109375p67 {+ 4208779747959727 67 (2.85487e+020)}
; Y = -1.598820371114654914634911619941703975200653076171875p-749 {- 2696847200213822 -749 (-5.39924e-226)}
; 1.9345368363521904253587990751839242875576019287109375p67 + -1.598820371114654914634911619941703975200653076171875p-749 == 1.934536836352190203314194150152616202831268310546875p67
; [HW: 1.934536836352190203314194150152616202831268310546875p67] 

; mpf : + 4208779747959726 67
; mpfd: + 4208779747959726 67 (2.85487e+020) class: Pos. norm. non-zero
; hwf : + 4208779747959726 67 (2.85487e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000010 #b1110111100111101110011100101110100001010001110101111)))
(assert (= y (fp #b1 #b00100010010 #b1001100101001100010010101011011000011101101100111110)))
(assert (= r (fp #b0 #b10001000010 #b1110111100111101110011100101110100001010001110101110)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
