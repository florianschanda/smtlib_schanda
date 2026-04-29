(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0159217630412042954191065291524864733219146728515625 960 {- 71705246099449 960 (-9.90048e+288)}
; -1.0159217630412042954191065291524864733219146728515625 960 I == -1.0159217630412042954191065291524864733219146728515625 960
; [HW: -1.0159217630412042954191065291524864733219146728515625 960] 

; mpf : - 71705246099449 960
; mpfd: - 71705246099449 960 (-9.90048e+288) class: Neg. norm. non-zero
; hwf : - 71705246099449 960 (-9.90048e+288) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111111 #b0000010000010011011100101101101110001110011111111001)))
(assert (= r (fp #b1 #b11110111111 #b0000010000010011011100101101101110001110011111111001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
