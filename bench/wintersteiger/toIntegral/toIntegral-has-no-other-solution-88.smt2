(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.19759441158151513917573538492433726787567138671875 978 {- 889886118369004 978 (-3.05947e+294)}
; -1.19759441158151513917573538492433726787567138671875 978 I == -1.19759441158151513917573538492433726787567138671875 978
; [HW: -1.19759441158151513917573538492433726787567138671875 978] 

; mpf : - 889886118369004 978
; mpfd: - 889886118369004 978 (-3.05947e+294) class: Neg. norm. non-zero
; hwf : - 889886118369004 978 (-3.05947e+294) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111010001 #b0011001010010101100011000001111110011101011011101100)))
(assert (= r (fp #b1 #b11111010001 #b0011001010010101100011000001111110011101011011101100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
