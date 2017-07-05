(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.53578461737895732852621222264133393764495849609375p-389 {+ 2412959403178716 -389 (1.21804e-117)}
; Y = 1.13370822859949527128264890052378177642822265625p-917 {+ 602168328497056 -917 (1.02328e-276)}
; 1.53578461737895732852621222264133393764495849609375p-389 % 1.13370822859949527128264890052378177642822265625p-917 == 1.0020130287867203833229723386466503143310546875p-917
; [HW: 1.0020130287867203833229723386466503143310546875p-917] 

; mpf : + 9065875693760 -917
; mpfd: + 9065875693760 -917 (9.04414e-277) class: Pos. norm. non-zero
; hwf : + 9065875693760 -917 (9.04414e-277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111010 #b1000100100101001001011100100000101010111101011011100)))
(assert (= y (fp #b0 #b00001101010 #b0010001000111010101100111101010100001010011110100000)))
(assert (= r (fp #b1 #b00001100111 #x0db63681e3700)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
