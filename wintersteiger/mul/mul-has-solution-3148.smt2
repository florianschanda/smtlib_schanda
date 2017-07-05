(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6191705039033059687625382139231078326702117919921875p-435 {- 2788496050657731 -435 (-1.82492e-131)}
; Y = 1.4114045244099997500342169587383978068828582763671875p495 {+ 1852801262831411 495 (1.44377e+149)}
; -1.6191705039033059687625382139231078326702117919921875p-435 * 1.4114045244099997500342169587383978068828582763671875p495 == -1.142652287500172558765143548953346908092498779296875p61
; [HW: -1.142652287500172558765143548953346908092498779296875p61] 

; mpf : - 642448788829326 61
; mpfd: - 642448788829326 61 (-2.63478e+018) class: Neg. norm. non-zero
; hwf : - 642448788829326 61 (-2.63478e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001100 #b1001111010000001111101010100100011101001100111000011)))
(assert (= y (fp #b0 #b10111101110 #b0110100101010001110011101001000111000100011100110011)))
(assert (= r (fp #b1 #b10000111100 #b0010010010000100110111000011110110000011010010001110)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
