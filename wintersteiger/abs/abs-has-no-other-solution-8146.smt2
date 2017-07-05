(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9970967856568744291934081047656945884227752685546875p124 {+ 4490524712336619 124 (4.24736e+037)}
; 1.9970967856568744291934081047656945884227752685546875p124 | == 1.9970967856568744291934081047656945884227752685546875p124
; [HW: 1.9970967856568744291934081047656945884227752685546875p124] 

; mpf : + 4490524712336619 124
; mpfd: + 4490524712336619 124 (4.24736e+037) class: Pos. norm. non-zero
; hwf : + 4490524712336619 124 (4.24736e+037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111011 #b1111111101000001101111000010010101010111110011101011)))
(assert (= r (fp #b0 #b10001111011 #b1111111101000001101111000010010101010111110011101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
