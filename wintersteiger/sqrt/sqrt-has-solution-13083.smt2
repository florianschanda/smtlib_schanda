(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.054986063771851778625432416447438299655914306640625p-688 {+ 247635216313482 -688 (8.21504e-208)}
; 1.054986063771851778625432416447438299655914306640625p-688 S == 1.0271251451365854823194467826397158205509185791015625p-344
; [HW: 1.0271251451365854823194467826397158205509185791015625p-344] 

; mpf : + 122160793529497 -344
; mpfd: + 122160793529497 -344 (2.86619e-104) class: Pos. norm. non-zero
; hwf : + 122160793529497 -344 (2.86619e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001111 #b0000111000010011100100010001000110100010110010001010)))
(assert (= r (fp #b0 #b01010100111 #b0000011011110001101011000110101101000010110010011001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
