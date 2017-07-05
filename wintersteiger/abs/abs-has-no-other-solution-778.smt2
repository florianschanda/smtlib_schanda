(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9176487934099275545207774484879337251186370849609375p-319 {+ 4132722764057935 -319 (1.79556e-096)}
; 1.9176487934099275545207774484879337251186370849609375p-319 | == 1.9176487934099275545207774484879337251186370849609375p-319
; [HW: 1.9176487934099275545207774484879337251186370849609375p-319] 

; mpf : + 4132722764057935 -319
; mpfd: + 4132722764057935 -319 (1.79556e-096) class: Pos. norm. non-zero
; hwf : + 4132722764057935 -319 (1.79556e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000000 #b1110101011101011000010000000010011101000110101001111)))
(assert (= r (fp #b0 #b01011000000 #b1110101011101011000010000000010011101000110101001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
