(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.383227599830872289743410874507389962673187255859375p-146 {- 1725903675796406 -146 (-1.55065e-044)}
; -1.383227599830872289743410874507389962673187255859375p-146 | == 1.383227599830872289743410874507389962673187255859375p-146
; [HW: 1.383227599830872289743410874507389962673187255859375p-146] 

; mpf : + 1725903675796406 -146
; mpfd: + 1725903675796406 -146 (1.55065e-044) class: Pos. norm. non-zero
; hwf : + 1725903675796406 -146 (1.55065e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101101101 #b0110001000011011001101000011100000110010101110110110)))
(assert (= r (fp #b0 #b01101101101 #b0110001000011011001101000011100000110010101110110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
