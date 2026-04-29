(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1811631541042355575399369627120904624462127685546875p-602 {+ 815886313317099 -602 (7.11627e-182)}
; 1.1811631541042355575399369627120904624462127685546875p-602 | == 1.1811631541042355575399369627120904624462127685546875p-602
; [HW: 1.1811631541042355575399369627120904624462127685546875p-602] 

; mpf : + 815886313317099 -602
; mpfd: + 815886313317099 -602 (7.11627e-182) class: Pos. norm. non-zero
; hwf : + 815886313317099 -602 (7.11627e-182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100101 #b0010111001100000101101010101111000011110001011101011)))
(assert (= r (fp #b0 #b00110100101 #b0010111001100000101101010101111000011110001011101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
