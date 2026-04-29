(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3279563398576261779027163356659002602100372314453125p926 {+ 1476984049976597 926 (7.53286e+278)}
; 1.3279563398576261779027163356659002602100372314453125p926 S == 1.1523698797945154392863287284853868186473846435546875p463
; [HW: 1.1523698797945154392863287284853868186473846435546875p463] 

; mpf : + 686212933865067 463
; mpfd: + 686212933865067 463 (2.74461e+139) class: Pos. norm. non-zero
; hwf : + 686212933865067 463 (2.74461e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011101 #b0101001111110100111100100101101000110100010100010101)))
(assert (= r (fp #b0 #b10111001110 #b0010011100000001101101100110001010011100111001101011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
