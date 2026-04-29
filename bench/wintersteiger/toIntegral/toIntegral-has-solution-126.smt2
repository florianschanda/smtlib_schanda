(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3014835330041580885307439530151896178722381591796875 14 {- 1357761126895867 14 (-21323.5)}
; -1.3014835330041580885307439530151896178722381591796875 14 I == -1.30145263671875 14
; [HW: -1.30145263671875 14] 

; mpf : - 1357621982396416 14
; mpfd: - 1357621982396416 14 (-21323) class: Neg. norm. non-zero
; hwf : - 1357621982396416 14 (-21323) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001101 #b0100110100101110000001100101101010001001000011111011)))
(assert (= r (fp #b1 #b10000001101 #b0100110100101100000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
