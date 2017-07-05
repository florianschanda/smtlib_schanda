(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9477651561321895901102152492967434227466583251953125p-559 {+ 4268354803991669 -559 (1.03221e-168)}
; Y = -1.0188323570734845180396632713382132351398468017578125p-277 {- 84813396298653 -277 (-4.1956e-084)}
; 1.9477651561321895901102152492967434227466583251953125p-559 % -1.0188323570734845180396632713382132351398468017578125p-277 == 1.9477651561321895901102152492967434227466583251953125p-559
; [HW: 1.9477651561321895901102152492967434227466583251953125p-559] 

; mpf : + 4268354803991669 -559
; mpfd: + 4268354803991669 -559 (1.03221e-168) class: Pos. norm. non-zero
; hwf : + 4268354803991669 -559 (1.03221e-168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111010000 #b1111001010100000101111001011110111100000010001110101)))
(assert (= y (fp #b1 #b01011101010 #b0000010011010010001100101000010110111100101110011101)))
(assert (= r (fp #b0 #b00111010000 #xf2a0bcbde0475)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
