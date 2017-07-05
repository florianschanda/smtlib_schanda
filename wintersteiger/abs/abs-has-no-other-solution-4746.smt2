(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.75129088137784538758978669648058712482452392578125p92 {- 3383513333420116 92 (-8.67197e+027)}
; -1.75129088137784538758978669648058712482452392578125p92 | == 1.75129088137784538758978669648058712482452392578125p92
; [HW: 1.75129088137784538758978669648058712482452392578125p92] 

; mpf : + 3383513333420116 92
; mpfd: + 3383513333420116 92 (8.67197e+027) class: Pos. norm. non-zero
; hwf : + 3383513333420116 92 (8.67197e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011011 #b1100000001010100100110010110010101001101000001010100)))
(assert (= r (fp #b0 #b10001011011 #b1100000001010100100110010110010101001101000001010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
