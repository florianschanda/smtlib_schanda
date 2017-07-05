(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9310201164573914667244025622494518756866455078125p-338 {+ 4192941849551944 -338 (3.44864e-102)}
; 1.9310201164573914667244025622494518756866455078125p-338 S == 1.3896114983898886219293444810318760573863983154296875p-169
; [HW: 1.3896114983898886219293444810318760573863983154296875p-169] 

; mpf : + 1754654198967963 -169
; mpfd: + 1754654198967963 -169 (1.85705e-051) class: Pos. norm. non-zero
; hwf : + 1754654198967963 -169 (1.85705e-051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101101 #b1110111001010111010101011001100000011010010001001000)))
(assert (= r (fp #b0 #b01101010110 #b0110001110111101100101000100001110111010111010011011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
