(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.58978784413453144708228137460537254810333251953125 723 {+ 2656168315071924 723 (7.01497e+217)}
; 1.58978784413453144708228137460537254810333251953125 723 I == 1.58978784413453144708228137460537254810333251953125 723
; [HW: 1.58978784413453144708228137460537254810333251953125 723] 

; mpf : + 2656168315071924 723
; mpfd: + 2656168315071924 723 (7.01497e+217) class: Pos. norm. non-zero
; hwf : + 2656168315071924 723 (7.01497e+217) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011010010 #b1001011011111100010101100000111000100010110110110100)))
(assert (= r (fp #b0 #b11011010010 #b1001011011111100010101100000111000100010110110110100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
