(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5343387938343944210117797410930506885051727294921875p-845 {- 2406447992802179 -845 (-6.53996e-255)}
; Y = -1.03838865003664171382524727960117161273956298828125p-904 {- 172887110000276 -904 (-7.67792e-273)}
; -1.5343387938343944210117797410930506885051727294921875p-845 % -1.03838865003664171382524727960117161273956298828125p-904 == -1.032315509468059389064364950172603130340576171875p-905
; [HW: -1.032315509468059389064364950172603130340576171875p-905] 

; mpf : - 145536116398640 -905
; mpfd: - 145536116398640 -905 (-3.81651e-273) class: Neg. norm. non-zero
; hwf : - 145536116398640 -905 (-3.81651e-273) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110010 #b1000100011001010011011010101110010000000101110000011)))
(assert (= y (fp #b1 #b00001110111 #b0000100111010011110101101010110001110001111010010100)))
(assert (= r (fp #b1 #b00001110110 #x0845d44851a30)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
