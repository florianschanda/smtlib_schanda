(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.866443871887263572517667853389866650104522705078125 214 {+ 3902116298568930 214 (4.91399e+064)}
; 1.866443871887263572517667853389866650104522705078125 214 I == 1.866443871887263572517667853389866650104522705078125 214
; [HW: 1.866443871887263572517667853389866650104522705078125 214] 

; mpf : + 3902116298568930 214
; mpfd: + 3902116298568930 214 (4.91399e+064) class: Pos. norm. non-zero
; hwf : + 3902116298568930 214 (4.91399e+064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010101 #b1101110111001111010000111111110110010011010011100010)))
(assert (= r (fp #b0 #b10011010101 #b1101110111001111010000111111110110010011010011100010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
