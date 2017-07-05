(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4137941059942651378378286608494818210601806640625p-799 {- 1863562981563880 -799 (-4.24053e-241)}
; Y = 1.773292104170261840323519209050573408603668212890625p199 {+ 3482598032189738 199 (1.42479e+060)}
; Z = -1.930279372359795519997760493424721062183380126953125p-894 {- 4189605834710034 -894 (-1.46152e-269)}
; -1.4137941059942651378378286608494818210601806640625p-799 x 1.773292104170261840323519209050573408603668212890625p199 -1.930279372359795519997760493424721062183380126953125p-894 == -1.253534962541042130368396101403050124645233154296875p-599
; [HW: -1.253534962541042130368396101403050124645233154296875p-599] 

; mpf : - 1141819962825230 -599
; mpfd: - 1141819962825230 -599 (-6.04184e-181) class: Neg. norm. non-zero
; hwf : - 1141819962825230 -599 (-6.04184e-181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100000 #b0110100111101110011010010001100010000101110111101000)))
(assert (= y (fp #b0 #b10011000110 #b1100010111110110011110001010100110101010100100101010)))
(assert (= z (fp #b1 #b00010000001 #b1110111000100110110010011111100001101101110000010010)))
(assert (= r (fp #b1 #b00110101000 #b0100000011100111101010101101010010000001101000001110)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
