(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9809292373663460740118580361013300716876983642578125p76 {+ 4417712547879901 76 (1.49675e+023)}
; 1.9809292373663460740118580361013300716876983642578125p76 | == 1.9809292373663460740118580361013300716876983642578125p76
; [HW: 1.9809292373663460740118580361013300716876983642578125p76] 

; mpf : + 4417712547879901 76
; mpfd: + 4417712547879901 76 (1.49675e+023) class: Pos. norm. non-zero
; hwf : + 4417712547879901 76 (1.49675e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001011 #b1111101100011110001011011011001000101101101111011101)))
(assert (= r (fp #b0 #b10001001011 #b1111101100011110001011011011001000101101101111011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
