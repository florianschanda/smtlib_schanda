(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.454730780007803758735462906770408153533935546875p946 {- 2047925371397040 946 (-8.65284e+284)}
; -1.454730780007803758735462906770408153533935546875p946 | == 1.454730780007803758735462906770408153533935546875p946
; [HW: 1.454730780007803758735462906770408153533935546875p946] 

; mpf : + 2047925371397040 946
; mpfd: + 2047925371397040 946 (8.65284e+284) class: Pos. norm. non-zero
; hwf : + 2047925371397040 946 (8.65284e+284) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110110001 #b0111010001101001001111001000010010011110001110110000)))
(assert (= r (fp #b0 #b11110110001 #b0111010001101001001111001000010010011110001110110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
