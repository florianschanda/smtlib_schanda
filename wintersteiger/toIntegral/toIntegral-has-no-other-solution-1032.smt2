(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.121897461786506955405684493598528206348419189453125 452 {+ 548977363479122 452 (1.3047e+136)}
; 1.121897461786506955405684493598528206348419189453125 452 I == 1.121897461786506955405684493598528206348419189453125 452
; [HW: 1.121897461786506955405684493598528206348419189453125 452] 

; mpf : + 548977363479122 452
; mpfd: + 548977363479122 452 (1.3047e+136) class: Pos. norm. non-zero
; hwf : + 548977363479122 452 (1.3047e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000011 #b0001111100110100101011000000101111010110101001010010)))
(assert (= r (fp #b0 #b10111000011 #b0001111100110100101011000000101111010110101001010010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
