(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.817483088842359872927545438869856297969818115234375 703 {+ 3681616534292134 703 (7.64817e+211)}
; 1.817483088842359872927545438869856297969818115234375 703 I == 1.817483088842359872927545438869856297969818115234375 703
; [HW: 1.817483088842359872927545438869856297969818115234375 703] 

; mpf : + 3681616534292134 703
; mpfd: + 3681616534292134 703 (7.64817e+211) class: Pos. norm. non-zero
; hwf : + 3681616534292134 703 (7.64817e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010111110 #b1101000101000110100100100101101110011100011010100110)))
(assert (= r (fp #b0 #b11010111110 #b1101000101000110100100100101101110011100011010100110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
