(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9462094878458611191263116779737174510955810546875p-117 {- 4261348696877048 -117 (-1.17133e-035)}
; -1.9462094878458611191263116779737174510955810546875p-117 | == 1.9462094878458611191263116779737174510955810546875p-117
; [HW: 1.9462094878458611191263116779737174510955810546875p-117] 

; mpf : + 4261348696877048 -117
; mpfd: + 4261348696877048 -117 (1.17133e-035) class: Pos. norm. non-zero
; hwf : + 4261348696877048 -117 (1.17133e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001010 #b1111001000111010110010001111010101110110011111111000)))
(assert (= r (fp #b0 #b01110001010 #b1111001000111010110010001111010101110110011111111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
