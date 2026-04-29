(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.098076687461201572659774683415889739990234375p-580 {+ 441698133104000 -580 (2.77482e-175)}
; 1.098076687461201572659774683415889739990234375p-580 | == 1.098076687461201572659774683415889739990234375p-580
; [HW: 1.098076687461201572659774683415889739990234375p-580] 

; mpf : + 441698133104000 -580
; mpfd: + 441698133104000 -580 (2.77482e-175) class: Pos. norm. non-zero
; hwf : + 441698133104000 -580 (2.77482e-175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110111011 #b0001100100011011100011011100010100100101010110000000)))
(assert (= r (fp #b0 #b00110111011 #b0001100100011011100011011100010100100101010110000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
