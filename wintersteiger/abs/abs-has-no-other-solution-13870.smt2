(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0241284493625339990785505506210029125213623046875p313 {- 108664875558136 313 (-1.709e+094)}
; -1.0241284493625339990785505506210029125213623046875p313 | == 1.0241284493625339990785505506210029125213623046875p313
; [HW: 1.0241284493625339990785505506210029125213623046875p313] 

; mpf : + 108664875558136 313
; mpfd: + 108664875558136 313 (1.709e+094) class: Pos. norm. non-zero
; hwf : + 108664875558136 313 (1.709e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111000 #b0000011000101101010010000011010011101010010011111000)))
(assert (= r (fp #b0 #b10100111000 #b0000011000101101010010000011010011101010010011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
