(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.789574596111530357944729985320009291172027587890625p-650 {- 3555927856829098 -650 (-3.83047e-196)}
; -1.789574596111530357944729985320009291172027587890625p-650 | == 1.789574596111530357944729985320009291172027587890625p-650
; [HW: 1.789574596111530357944729985320009291172027587890625p-650] 

; mpf : + 3555927856829098 -650
; mpfd: + 3555927856829098 -650 (3.83047e-196) class: Pos. norm. non-zero
; hwf : + 3555927856829098 -650 (3.83047e-196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110101 #b1100101000100001100011111000110000001101001010101010)))
(assert (= r (fp #b0 #b00101110101 #b1100101000100001100011111000110000001101001010101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
