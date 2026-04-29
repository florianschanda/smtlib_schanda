(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9001961791745725083302431812626309692859649658203125p-586 {+ 4054123177090949 -586 (7.50276e-177)}
; 1.9001961791745725083302431812626309692859649658203125p-586 S == 1.37847603503817683900933843688108026981353759765625p-293
; [HW: 1.37847603503817683900933843688108026981353759765625p-293] 

; mpf : + 1704504530366596 -293
; mpfd: + 1704504530366596 -293 (8.66185e-089) class: Pos. norm. non-zero
; hwf : + 1704504530366596 -293 (8.66185e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110110101 #b1110011001110011010000011011110110001001111110000101)))
(assert (= r (fp #b0 #b01011011010 #b0110000011100011110011100011000011001111000010000100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
