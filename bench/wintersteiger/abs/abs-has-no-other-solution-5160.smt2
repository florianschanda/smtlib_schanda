(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.283614819405148654851700484869070351123809814453125p-687 {+ 1277287594989778 -687 (1.99907e-207)}
; 1.283614819405148654851700484869070351123809814453125p-687 | == 1.283614819405148654851700484869070351123809814453125p-687
; [HW: 1.283614819405148654851700484869070351123809814453125p-687] 

; mpf : + 1277287594989778 -687
; mpfd: + 1277287594989778 -687 (1.99907e-207) class: Pos. norm. non-zero
; hwf : + 1277287594989778 -687 (1.99907e-207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010000 #b0100100010011010111110110001011000000001100011010010)))
(assert (= r (fp #b0 #b00101010000 #b0100100010011010111110110001011000000001100011010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
