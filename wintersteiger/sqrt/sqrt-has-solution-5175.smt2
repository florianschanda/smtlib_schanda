(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3204014122583902501872898938017897307872772216796875p-169 {+ 1442959680855867 -169 (1.76456e-051)}
; 1.3204014122583902501872898938017897307872772216796875p-169 S == 1.625054714314807302599774629925377666950225830078125p-85
; [HW: 1.625054714314807302599774629925377666950225830078125p-85] 

; mpf : + 2814996178474338 -85
; mpfd: + 2814996178474338 -85 (4.20067e-026) class: Pos. norm. non-zero
; hwf : + 2814996178474338 -85 (4.20067e-026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010110 #b0101001000000101110100111011001100111101111100111011)))
(assert (= r (fp #b0 #b01110101010 #b1010000000000011100101011111010000110001010101100010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
