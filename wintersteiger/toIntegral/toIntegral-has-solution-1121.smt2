(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2219285129589325666898957933881320059299468994140625 909 {- 999477168264737 909 (-5.28825e+273)}
; -1.2219285129589325666898957933881320059299468994140625 909 I == -1.2219285129589325666898957933881320059299468994140625 909
; [HW: -1.2219285129589325666898957933881320059299468994140625 909] 

; mpf : - 999477168264737 909
; mpfd: - 999477168264737 909 (-5.28825e+273) class: Neg. norm. non-zero
; hwf : - 999477168264737 909 (-5.28825e+273) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110001100 #b0011100011010000010011101001100100110101011000100001)))
(assert (= r (fp #b1 #b11110001100 #b0011100011010000010011101001100100110101011000100001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
