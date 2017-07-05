(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2625842046061628298758705568616278469562530517578125p-26 {- 1182574126017693 -26 (-1.8814e-008)}
; Y = -1.7575545474849458837951488021644763648509979248046875p495 {- 3411722377766027 495 (-1.79786e+149)}
; -1.2625842046061628298758705568616278469562530517578125p-26 m -1.7575545474849458837951488021644763648509979248046875p495 == -1.7575545474849458837951488021644763648509979248046875p495
; [HW: -1.7575545474849458837951488021644763648509979248046875p495] 

; mpf : - 3411722377766027 495
; mpfd: - 3411722377766027 495 (-1.79786e+149) class: Neg. norm. non-zero
; hwf : - 3411722377766027 495 (-1.79786e+149) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100101 #b0100001100111000101101111110101100111010110010011101)))
(assert (= y (fp #b1 #b10111101110 #b1100000111101111000110000100011001100010010010001011)))
(assert (= r (fp #b1 #b10111101110 #b1100000111101111000110000100011001100010010010001011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
