(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.077309054796856901958790331264026463031768798828125 218 {- 348169030375490 218 (-4.53816e+065)}
; -1.077309054796856901958790331264026463031768798828125 218 I == -1.077309054796856901958790331264026463031768798828125 218
; [HW: -1.077309054796856901958790331264026463031768798828125 218] 

; mpf : - 348169030375490 218
; mpfd: - 348169030375490 218 (-4.53816e+065) class: Neg. norm. non-zero
; hwf : - 348169030375490 218 (-4.53816e+065) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011001 #b0001001111001010100001101011011000001001100001000010)))
(assert (= r (fp #b1 #b10011011001 #b0001001111001010100001101011011000001001100001000010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
