(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.282994460746154974373212098726071417331695556640625p550 {- 1274493747964298 550 (-4.72849e+165)}
; Y = 1.3941602918086768436722877595457248389720916748046875p-424 {+ 1775140143313803 -424 (3.21806e-128)}
; -1.282994460746154974373212098726071417331695556640625p550 + 1.3941602918086768436722877595457248389720916748046875p-424 == -1.2829944607461547523286071736947633326053619384765625p550
; [HW: -1.2829944607461547523286071736947633326053619384765625p550] 

; mpf : - 1274493747964297 550
; mpfd: - 1274493747964297 550 (-4.72849e+165) class: Neg. norm. non-zero
; hwf : - 1274493747964297 550 (-4.72849e+165) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100101 #b0100100001110010010100110011000111011010100110001010)))
(assert (= y (fp #b0 #b01001010111 #b0110010011100111101100000101101010110011001110001011)))
(assert (= r (fp #b1 #b11000100101 #b0100100001110010010100110011000111011010100110001001)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
