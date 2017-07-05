(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4543476818515566062472998964949510991573333740234375p-326 {+ 2046200050683319 -326 (1.06387e-098)}
; Y = -1.7995113107147016062725697338464669883251190185546875p-655 {- 3600678841013227 -655 (-1.20367e-197)}
; 1.4543476818515566062472998964949510991573333740234375p-326 - -1.7995113107147016062725697338464669883251190185546875p-655 == 1.4543476818515568282919048215262591838836669921875p-326
; [HW: 1.4543476818515568282919048215262591838836669921875p-326] 

; mpf : + 2046200050683320 -326
; mpfd: + 2046200050683320 -326 (1.06387e-098) class: Pos. norm. non-zero
; hwf : + 2046200050683320 -326 (1.06387e-098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111001 #b0111010001010000001000010011001010010000110110110111)))
(assert (= y (fp #b1 #b00101110000 #b1100110010101100110001011111010001001101001111101011)))
(assert (= r (fp #b0 #b01010111001 #b0111010001010000001000010011001010010000110110111000)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
