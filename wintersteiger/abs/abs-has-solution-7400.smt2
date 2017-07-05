(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.268550546629985564806020192918367683887481689453125p-921 {- 1209444141732946 -921 (-7.15619e-278)}
; -1.268550546629985564806020192918367683887481689453125p-921 | == 1.268550546629985564806020192918367683887481689453125p-921
; [HW: 1.268550546629985564806020192918367683887481689453125p-921] 

; mpf : + 1209444141732946 -921
; mpfd: + 1209444141732946 -921 (7.15619e-278) class: Pos. norm. non-zero
; hwf : + 1209444141732946 -921 (7.15619e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100110 #b0100010010111111101110101000011100011001010001010010)))
(assert (= r (fp #b0 #b00001100110 #b0100010010111111101110101000011100011001010001010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
