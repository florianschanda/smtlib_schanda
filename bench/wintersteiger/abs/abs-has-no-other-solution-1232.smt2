(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.606603215237264681292117529665119946002960205078125p-825 {+ 2731898014104290 -825 (7.18062e-249)}
; 1.606603215237264681292117529665119946002960205078125p-825 | == 1.606603215237264681292117529665119946002960205078125p-825
; [HW: 1.606603215237264681292117529665119946002960205078125p-825] 

; mpf : + 2731898014104290 -825
; mpfd: + 2731898014104290 -825 (7.18062e-249) class: Pos. norm. non-zero
; hwf : + 2731898014104290 -825 (7.18062e-249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000110 #b1001101101001010010110010010101100010111101011100010)))
(assert (= r (fp #b0 #b00011000110 #b1001101101001010010110010010101100010111101011100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
