(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3083113104428367723386372745153494179248809814453125p-879 {+ 1388510702824469 -879 (3.24597e-265)}
; 1.3083113104428367723386372745153494179248809814453125p-879 | == 1.3083113104428367723386372745153494179248809814453125p-879
; [HW: 1.3083113104428367723386372745153494179248809814453125p-879] 

; mpf : + 1388510702824469 -879
; mpfd: + 1388510702824469 -879 (3.24597e-265) class: Pos. norm. non-zero
; hwf : + 1388510702824469 -879 (3.24597e-265) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010000 #b0100111011101101011111010111001101010110110000010101)))
(assert (= r (fp #b0 #b00010010000 #b0100111011101101011111010111001101010110110000010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
