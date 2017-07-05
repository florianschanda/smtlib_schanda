(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3999155243047718411020241546793840825557708740234375p845 {+ 1801059406238647 845 (3.28434e+254)}
; 1.3999155243047718411020241546793840825557708740234375p845 | == 1.3999155243047718411020241546793840825557708740234375p845
; [HW: 1.3999155243047718411020241546793840825557708740234375p845] 

; mpf : + 1801059406238647 845
; mpfd: + 1801059406238647 845 (3.28434e+254) class: Pos. norm. non-zero
; hwf : + 1801059406238647 845 (3.28434e+254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001100 #b0110011001100000110111010010001000001101001110110111)))
(assert (= r (fp #b0 #b11101001100 #b0110011001100000110111010010001000001101001110110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
