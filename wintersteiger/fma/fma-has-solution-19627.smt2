(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3735952191115547993405243687448091804981231689453125p342 {+ 1682523289578197 342 (1.2306e+103)}
; Y = -1.55447546680408787977967222104780375957489013671875p680 {- 2497135505684972 680 (-7.79796e+204)}
; Z = 1.063055730442666657609152025543153285980224609375p-962 {+ 283977764125168 -962 (2.72709e-290)}
; 1.3735952191115547993405243687448091804981231689453125p342 x -1.55447546680408787977967222104780375957489013671875p680 1.063055730442666657609152025543153285980224609375p-962 == -1.067610034714148614654050106764771044254302978515625p1023
; [HW: -1.067610034714148614654050106764771044254302978515625p1023] 

; mpf : - 304488527145146 1023
; mpfd: - 304488527145146 1023 (-9.59618e+307) class: Neg. norm. non-zero
; hwf : - 304488527145146 1023 (-9.59618e+307) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010101 #b0101111110100011111011111011000000000110101011010101)))
(assert (= y (fp #b1 #b11010100111 #b1000110111110010000110101010110001011011100111101100)))
(assert (= z (fp #b0 #b00000111101 #b0001000000100100011010111001110000010011100111110000)))
(assert (= r (fp #b1 #b11111111110 #b0001000101001110111001000010011111111010100010111010)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
