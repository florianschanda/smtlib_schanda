(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3965815729590265181769836999592371284961700439453125 166 {+ 1786044624200277 166 (1.30631e+050)}
; 1.3965815729590265181769836999592371284961700439453125 166 I == 1.3965815729590265181769836999592371284961700439453125 166
; [HW: 1.3965815729590265181769836999592371284961700439453125 166] 

; mpf : + 1786044624200277 166
; mpfd: + 1786044624200277 166 (1.30631e+050) class: Pos. norm. non-zero
; hwf : + 1786044624200277 166 (1.30631e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100101 #b0110010110000110010111101011011000001110001001010101)))
(assert (= r (fp #b0 #b10010100101 #b0110010110000110010111101011011000001110001001010101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
