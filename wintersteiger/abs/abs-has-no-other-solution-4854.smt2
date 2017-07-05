(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3955869136116962891946968738920986652374267578125p729 {+ 1781565076734280 729 (3.94116e+219)}
; 1.3955869136116962891946968738920986652374267578125p729 | == 1.3955869136116962891946968738920986652374267578125p729
; [HW: 1.3955869136116962891946968738920986652374267578125p729] 

; mpf : + 1781565076734280 729
; mpfd: + 1781565076734280 729 (3.94116e+219) class: Pos. norm. non-zero
; hwf : + 1781565076734280 729 (3.94116e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011000 #b0110010101000101001011110001100010110000000101001000)))
(assert (= r (fp #b0 #b11011011000 #b0110010101000101001011110001100010110000000101001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
