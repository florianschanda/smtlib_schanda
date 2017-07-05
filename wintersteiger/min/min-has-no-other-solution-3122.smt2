(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68962174195208714166938079870305955410003662109375p-368 {- 3105780220082012 -368 (-2.81029e-111)}
; Y = 1.5965461795917548215584247373044490814208984375p-758 {+ 2686605152118720 -758 (1.05304e-228)}
; -1.68962174195208714166938079870305955410003662109375p-368 m 1.5965461795917548215584247373044490814208984375p-758 == -1.68962174195208714166938079870305955410003662109375p-368
; [HW: -1.68962174195208714166938079870305955410003662109375p-368] 

; mpf : - 3105780220082012 -368
; mpfd: - 3105780220082012 -368 (-2.81029e-111) class: Neg. norm. non-zero
; hwf : - 3105780220082012 -368 (-2.81029e-111) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010001111 #b1011000010001011000011001110110001001011011101011100)))
(assert (= y (fp #b0 #b00100001001 #b1001100010110111010000000001101111100110011111000000)))
(assert (= r (fp #b1 #b01010001111 #b1011000010001011000011001110110001001011011101011100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
