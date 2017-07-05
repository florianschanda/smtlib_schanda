(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2396460235259316728928524753428064286708831787109375p-964 {+ 1079269742252207 -964 (7.95027e-291)}
; 1.2396460235259316728928524753428064286708831787109375p-964 | == 1.2396460235259316728928524753428064286708831787109375p-964
; [HW: 1.2396460235259316728928524753428064286708831787109375p-964] 

; mpf : + 1079269742252207 -964
; mpfd: + 1079269742252207 -964 (7.95027e-291) class: Pos. norm. non-zero
; hwf : + 1079269742252207 -964 (7.95027e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111011 #b0011110101011001011100010001100110101001000010101111)))
(assert (= r (fp #b0 #b00000111011 #b0011110101011001011100010001100110101001000010101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
