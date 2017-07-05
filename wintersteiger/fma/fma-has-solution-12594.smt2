(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5427323829434509416813625648501329123973846435546875p858 {+ 2444249357586027 858 (2.96501e+258)}
; Y = 1.551271684703155795403972661006264388561248779296875p-978 {+ 2482706953809038 -978 (6.07228e-295)}
; Z = -1.9725936926321117059757170864031650125980377197265625p-232 {- 4380172591720873 -232 (-2.85811e-070)}
; 1.5427323829434509416813625648501329123973846435546875p858 x 1.551271684703155795403972661006264388561248779296875p-978 -1.9725936926321117059757170864031650125980377197265625p-232 == 1.1965985313674007972650770170730538666248321533203125p-119
; [HW: 1.1965985313674007972650770170730538666248321533203125p-119] 

; mpf : + 885401072607813 -119
; mpfd: + 885401072607813 -119 (1.80044e-036) class: Pos. norm. non-zero
; hwf : + 885401072607813 -119 (1.80044e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011001 #b1000101011110000100000100110101100111000111001101011)))
(assert (= y (fp #b0 #b00000101101 #b1000110100100000001001000010000100000010110010001110)))
(assert (= z (fp #b1 #b01100010111 #b1111100011111011111001100111011000100110100110101001)))
(assert (= r (fp #b0 #b01110001000 #b0011001001010100010010000000011010101010001001000101)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
