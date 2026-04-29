(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.65232975253217251321302683209069073200225830078125 88 {- 2937832030426580 88 (-5.11371e+026)}
; -1.65232975253217251321302683209069073200225830078125 88 I == -1.65232975253217251321302683209069073200225830078125 88
; [HW: -1.65232975253217251321302683209069073200225830078125 88] 

; mpf : - 2937832030426580 88
; mpfd: - 2937832030426580 88 (-5.11371e+026) class: Neg. norm. non-zero
; hwf : - 2937832030426580 88 (-5.11371e+026) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010111 #b1010011011111111000101010010100101010101010111010100)))
(assert (= r (fp #b1 #b10001010111 #b1010011011111111000101010010100101010101010111010100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
