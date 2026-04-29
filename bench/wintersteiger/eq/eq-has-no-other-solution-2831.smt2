(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6653407973670730779502946461434476077556610107421875p74 {+ 2996428567096739 74 (3.14574e+022)}
; Y = 1.7738476676587862090883618293446488678455352783203125p423 {+ 3485100067709637 423 (3.84242e+127)}
; 1.6653407973670730779502946461434476077556610107421875p74 = 1.7738476676587862090883618293446488678455352783203125p423 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001001 #b1010101001010011110001100100010101100010110110100011)))
(assert (= y (fp #b0 #b10110100110 #b1100011000011010111000010111100010101110001011000101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
