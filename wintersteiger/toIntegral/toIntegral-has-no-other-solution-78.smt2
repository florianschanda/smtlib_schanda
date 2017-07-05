(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1101824893533496219077960631693713366985321044921875 763 {+ 496217817994499 763 (5.38618e+229)}
; 1.1101824893533496219077960631693713366985321044921875 763 I == 1.1101824893533496219077960631693713366985321044921875 763
; [HW: 1.1101824893533496219077960631693713366985321044921875 763] 

; mpf : + 496217817994499 763
; mpfd: + 496217817994499 763 (5.38618e+229) class: Pos. norm. non-zero
; hwf : + 496217817994499 763 (5.38618e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111010 #b0001110000110100111010110110110001011101010100000011)))
(assert (= r (fp #b0 #b11011111010 #b0001110000110100111010110110110001011101010100000011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
