(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.074130749704885534612230912898667156696319580078125 543 {+ 333855216747618 543 (3.09275e+163)}
; 1.074130749704885534612230912898667156696319580078125 543 I == 1.074130749704885534612230912898667156696319580078125 543
; [HW: 1.074130749704885534612230912898667156696319580078125 543] 

; mpf : + 333855216747618 543
; mpfd: + 333855216747618 543 (3.09275e+163) class: Pos. norm. non-zero
; hwf : + 333855216747618 543 (3.09275e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011110 #b0001001011111010001110111001100110011100010001100010)))
(assert (= r (fp #b0 #b11000011110 #b0001001011111010001110111001100110011100010001100010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
