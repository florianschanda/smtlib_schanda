(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7485496680264258628767493064515292644500732421875 619 {- 3371168005992120 619 (-3.80404e+186)}
; -1.7485496680264258628767493064515292644500732421875 619 I == -1.7485496680264258628767493064515292644500732421875 619
; [HW: -1.7485496680264258628767493064515292644500732421875 619] 

; mpf : - 3371168005992120 619
; mpfd: - 3371168005992120 619 (-3.80404e+186) class: Neg. norm. non-zero
; hwf : - 3371168005992120 619 (-3.80404e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101010 #b1011111110100000111100110111011110011010111010111000)))
(assert (= r (fp #b1 #b11001101010 #b1011111110100000111100110111011110011010111010111000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
