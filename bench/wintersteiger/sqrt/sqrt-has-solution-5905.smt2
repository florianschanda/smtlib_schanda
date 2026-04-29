(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.95396644924768025930461590178310871124267578125p476 {+ 4296282945355808 476 (3.81237e+143)}
; 1.95396644924768025930461590178310871124267578125p476 S == 1.3978434995548252306463155036908574402332305908203125p238
; [HW: 1.3978434995548252306463155036908574402332305908203125p238] 

; mpf : + 1791727836346885 238
; mpfd: + 1791727836346885 238 (6.17444e+071) class: Pos. norm. non-zero
; hwf : + 1791727836346885 238 (6.17444e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011011 #b1111010000110111001001010010110100000000000000100000)))
(assert (= r (fp #b0 #b10011101101 #b0110010111011001000100100101001110000011101000000101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
