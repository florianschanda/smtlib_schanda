(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.32443729814580724024608571198768913745880126953125 866 {- 1461135695034548 866 (-6.5164e+260)}
; -1.32443729814580724024608571198768913745880126953125 866 I == -1.32443729814580724024608571198768913745880126953125 866
; [HW: -1.32443729814580724024608571198768913745880126953125 866] 

; mpf : - 1461135695034548 866
; mpfd: - 1461135695034548 866 (-6.5164e+260) class: Neg. norm. non-zero
; hwf : - 1461135695034548 866 (-6.5164e+260) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100001 #b0101001100001110010100101010000100100011100010110100)))
(assert (= r (fp #b1 #b11101100001 #b0101001100001110010100101010000100100011100010110100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
