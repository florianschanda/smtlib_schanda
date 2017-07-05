(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7209963245425841105173958567320369184017181396484375 292 {- 3247078778545479 292 (-1.36943e+088)}
; -1.7209963245425841105173958567320369184017181396484375 292 I == -1.7209963245425841105173958567320369184017181396484375 292
; [HW: -1.7209963245425841105173958567320369184017181396484375 292] 

; mpf : - 3247078778545479 292
; mpfd: - 3247078778545479 292 (-1.36943e+088) class: Neg. norm. non-zero
; hwf : - 3247078778545479 292 (-1.36943e+088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100011 #b1011100010010011001101110001001001110010010101000111)))
(assert (= r (fp #b1 #b10100100011 #b1011100010010011001101110001001001110010010101000111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
