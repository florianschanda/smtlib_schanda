(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.04046021682020040088900714181363582611083984375 660 {+ 182216617394784 660 (4.97763e+198)}
; 1.04046021682020040088900714181363582611083984375 660 I == 1.04046021682020040088900714181363582611083984375 660
; [HW: 1.04046021682020040088900714181363582611083984375 660] 

; mpf : + 182216617394784 660
; mpfd: + 182216617394784 660 (4.97763e+198) class: Pos. norm. non-zero
; hwf : + 182216617394784 660 (4.97763e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010011 #b0000101001011011100110011100110000001000001001100000)))
(assert (= r (fp #b0 #b11010010011 #b0000101001011011100110011100110000001000001001100000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
