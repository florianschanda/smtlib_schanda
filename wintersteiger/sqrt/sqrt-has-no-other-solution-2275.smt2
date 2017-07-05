(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1750587710956938991557763074524700641632080078125p178 {+ 788394616274504 178 (4.50193e+053)}
; 1.1750587710956938991557763074524700641632080078125p178 S == 1.0840012781799168717355996705009602010250091552734375p89
; [HW: 1.0840012781799168717355996705009602010250091552734375p89] 

; mpf : + 378308125109719 89
; mpfd: + 378308125109719 89 (6.70964e+026) class: Pos. norm. non-zero
; hwf : + 378308125109719 89 (6.70964e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110001 #b0010110011010000101001101101000010111011111001001000)))
(assert (= r (fp #b0 #b10001011000 #b0001010110000001000110111001011010011010110111010111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
