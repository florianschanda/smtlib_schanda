(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3463021343970336118900377186946570873260498046875 485 {- 1559606163428088 485 (-1.3449e+146)}
; -1.3463021343970336118900377186946570873260498046875 485 I == -1.3463021343970336118900377186946570873260498046875 485
; [HW: -1.3463021343970336118900377186946570873260498046875 485] 

; mpf : - 1559606163428088 485
; mpfd: - 1559606163428088 485 (-1.3449e+146) class: Neg. norm. non-zero
; hwf : - 1559606163428088 485 (-1.3449e+146) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100100 #b0101100010100111010000011011010111000101001011111000)))
(assert (= r (fp #b1 #b10111100100 #b0101100010100111010000011011010111000101001011111000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
