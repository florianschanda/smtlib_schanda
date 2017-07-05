(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.500309826797764589656480893609113991260528564453125p218 {- 2253195149536210 218 (-6.32004e+065)}
; -1.500309826797764589656480893609113991260528564453125p218 | == 1.500309826797764589656480893609113991260528564453125p218
; [HW: 1.500309826797764589656480893609113991260528564453125p218] 

; mpf : + 2253195149536210 218
; mpfd: + 2253195149536210 218 (6.32004e+065) class: Pos. norm. non-zero
; hwf : + 2253195149536210 218 (6.32004e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011001 #b1000000000010100010011100000011111110110101111010010)))
(assert (= r (fp #b0 #b10011011001 #b1000000000010100010011100000011111110110101111010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
