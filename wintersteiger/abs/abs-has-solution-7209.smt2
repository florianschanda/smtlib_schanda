(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3930538979127897736276509021990932524204254150390625p542 {+ 1770157388176561 542 (2.00551e+163)}
; 1.3930538979127897736276509021990932524204254150390625p542 | == 1.3930538979127897736276509021990932524204254150390625p542
; [HW: 1.3930538979127897736276509021990932524204254150390625p542] 

; mpf : + 1770157388176561 542
; mpfd: + 1770157388176561 542 (2.00551e+163) class: Pos. norm. non-zero
; hwf : + 1770157388176561 542 (2.00551e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011101 #b0110010010011111001011100010010100011001110010110001)))
(assert (= r (fp #b0 #b11000011101 #b0110010010011111001011100010010100011001110010110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
