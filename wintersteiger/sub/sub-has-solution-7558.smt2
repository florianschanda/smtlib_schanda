(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.310034781255325242455000989139080047607421875p-421 {+ 1396272525333376 -421 (2.4191e-127)}
; Y = 1.99670436468054024459206630126573145389556884765625p-632 {+ 4488757405373828 -632 (1.12036e-190)}
; 1.310034781255325242455000989139080047607421875p-421 - 1.99670436468054024459206630126573145389556884765625p-632 == 1.3100347812553250204103960641077719628810882568359375p-421
; [HW: 1.3100347812553250204103960641077719628810882568359375p-421] 

; mpf : + 1396272525333375 -421
; mpfd: + 1396272525333375 -421 (2.4191e-127) class: Pos. norm. non-zero
; hwf : + 1396272525333375 -421 (2.4191e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011010 #b0100111101011110011100000111111000011101001110000000)))
(assert (= y (fp #b0 #b00110000111 #b1111111100101000000001000110101000010101010110000100)))
(assert (= r (fp #b0 #b01001011010 #b0100111101011110011100000111111000011101001101111111)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
