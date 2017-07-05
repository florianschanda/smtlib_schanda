(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.645303350233433103966262933681719005107879638671875p-567 {- 2906187927652222 -567 (-3.40595e-171)}
; -1.645303350233433103966262933681719005107879638671875p-567 | == 1.645303350233433103966262933681719005107879638671875p-567
; [HW: 1.645303350233433103966262933681719005107879638671875p-567] 

; mpf : + 2906187927652222 -567
; mpfd: + 2906187927652222 -567 (3.40595e-171) class: Pos. norm. non-zero
; hwf : + 2906187927652222 -567 (3.40595e-171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111001000 #b1010010100110010100110011011000101000000011101111110)))
(assert (= r (fp #b0 #b00111001000 #b1010010100110010100110011011000101000000011101111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
