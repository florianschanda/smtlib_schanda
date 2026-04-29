(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3267553076024640734686954601784236729145050048828125p409 {+ 1471575081559789 409 (1.75412e+123)}
; 1.3267553076024640734686954601784236729145050048828125p409 S == 1.6289599796204103920871375521528534591197967529296875p204
; [HW: 1.6289599796204103920871375521528534591197967529296875p204] 

; mpf : + 2832583929849435 204
; mpfd: + 2832583929849435 204 (4.18822e+061) class: Pos. norm. non-zero
; hwf : + 2832583929849435 204 (4.18822e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011000 #b0101001110100110001111000101111111110010011011101101)))
(assert (= r (fp #b0 #b10011001011 #b1010000100000011100001010110111011110110011001011011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
