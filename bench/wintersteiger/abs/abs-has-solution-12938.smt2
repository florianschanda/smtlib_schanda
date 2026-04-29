(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5012727628976272331584596031461842358112335205078125p923 {+ 2257531828196733 923 (1.0645e+278)}
; 1.5012727628976272331584596031461842358112335205078125p923 | == 1.5012727628976272331584596031461842358112335205078125p923
; [HW: 1.5012727628976272331584596031461842358112335205078125p923] 

; mpf : + 2257531828196733 923
; mpfd: + 2257531828196733 923 (1.0645e+278) class: Pos. norm. non-zero
; hwf : + 2257531828196733 923 (1.0645e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011010 #b1000000001010011011010010110101100000101010101111101)))
(assert (= r (fp #b0 #b11110011010 #b1000000001010011011010010110101100000101010101111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
