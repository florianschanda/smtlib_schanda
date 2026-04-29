(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.173420141367708335877750869258306920528411865234375p777 {- 781014884042150 777 (-9.32739e+233)}
; -1.173420141367708335877750869258306920528411865234375p777 | == 1.173420141367708335877750869258306920528411865234375p777
; [HW: 1.173420141367708335877750869258306920528411865234375p777] 

; mpf : + 781014884042150 777
; mpfd: + 781014884042150 777 (9.32739e+233) class: Pos. norm. non-zero
; hwf : + 781014884042150 777 (9.32739e+233) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001000 #b0010110001100101010000110010101110100100010110100110)))
(assert (= r (fp #b0 #b11100001000 #b0010110001100101010000110010101110100100010110100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
