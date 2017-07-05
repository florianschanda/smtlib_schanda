(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1775503279301149373026191824465058743953704833984375 426 {+ 799615590705575 426 (2.0406e+128)}
; 1.1775503279301149373026191824465058743953704833984375 426 I == 1.1775503279301149373026191824465058743953704833984375 426
; [HW: 1.1775503279301149373026191824465058743953704833984375 426] 

; mpf : + 799615590705575 426
; mpfd: + 799615590705575 426 (2.0406e+128) class: Pos. norm. non-zero
; hwf : + 799615590705575 426 (2.0406e+128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101001 #b0010110101110011111100000011001111011010100110100111)))
(assert (= r (fp #b0 #b10110101001 #b0010110101110011111100000011001111011010100110100111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
