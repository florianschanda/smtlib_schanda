(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1443528318681497335518315594526939094066619873046875p674 {- 650107359811275 674 (-8.96968e+202)}
; Y = 1.3402682681473283565765086677856743335723876953125p-616 {+ 1532432045634312 -616 (4.9285e-186)}
; Z = -1.5262132677631383703698020326555706560611724853515625p-103 {- 2369853876615481 -103 (-1.50496e-031)}
; -1.1443528318681497335518315594526939094066619873046875p674 x 1.3402682681473283565765086677856743335723876953125p-616 -1.5262132677631383703698020326555706560611724853515625p-103 == -1.5337397881174157365791188567527569830417633056640625p58
; [HW: -1.5337397881174157365791188567527569830417633056640625p58] 

; mpf : - 2403750310878401 58
; mpfd: - 2403750310878401 58 (-4.4207e+017) class: Neg. norm. non-zero
; hwf : - 2403750310878401 58 (-4.4207e+017) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100001 #b0010010011110100010011101010001111110101011011001011)))
(assert (= y (fp #b0 #b00110010111 #b0101011100011011110100100011101110001111001100001000)))
(assert (= z (fp #b1 #b01110011000 #b1000011010110101111010011010011111000011100100111001)))
(assert (= r (fp #b1 #b10000111001 #b1000100010100011001010111011011010001001110011000001)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
