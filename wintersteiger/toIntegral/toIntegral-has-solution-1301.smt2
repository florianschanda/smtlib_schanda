(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.451029660039931723503059401991777122020721435546875 469 {- 2031257008888878 469 (-2.21179e+141)}
; -1.451029660039931723503059401991777122020721435546875 469 I == -1.451029660039931723503059401991777122020721435546875 469
; [HW: -1.451029660039931723503059401991777122020721435546875 469] 

; mpf : - 2031257008888878 469
; mpfd: - 2031257008888878 469 (-2.21179e+141) class: Neg. norm. non-zero
; hwf : - 2031257008888878 469 (-2.21179e+141) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010100 #b0111001101110110101011100000011101100101110000101110)))
(assert (= r (fp #b1 #b10111010100 #b0111001101110110101011100000011101100101110000101110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
