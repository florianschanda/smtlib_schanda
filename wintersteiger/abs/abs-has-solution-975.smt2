(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.315612802955543170213559278636239469051361083984375p-846 {- 1421393701783942 -846 (-2.80383e-255)}
; -1.315612802955543170213559278636239469051361083984375p-846 | == 1.315612802955543170213559278636239469051361083984375p-846
; [HW: 1.315612802955543170213559278636239469051361083984375p-846] 

; mpf : + 1421393701783942 -846
; mpfd: + 1421393701783942 -846 (2.80383e-255) class: Pos. norm. non-zero
; hwf : + 1421393701783942 -846 (2.80383e-255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110001 #b0101000011001100000000000010101011100100100110000110)))
(assert (= r (fp #b0 #b00010110001 #b0101000011001100000000000010101011100100100110000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
