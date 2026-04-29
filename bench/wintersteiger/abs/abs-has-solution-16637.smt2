(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4174339887397595649787263027974404394626617431640625p-73 {+ 1879955556140161 -73 (1.50077e-022)}
; 1.4174339887397595649787263027974404394626617431640625p-73 | == 1.4174339887397595649787263027974404394626617431640625p-73
; [HW: 1.4174339887397595649787263027974404394626617431640625p-73] 

; mpf : + 1879955556140161 -73
; mpfd: + 1879955556140161 -73 (1.50077e-022) class: Pos. norm. non-zero
; hwf : + 1879955556140161 -73 (1.50077e-022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110110 #b0110101011011100111101000011000111100000010010000001)))
(assert (= r (fp #b0 #b01110110110 #b0110101011011100111101000011000111100000010010000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
