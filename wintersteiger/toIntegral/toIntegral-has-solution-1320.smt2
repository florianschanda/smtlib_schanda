(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.455977587998801059399056612164713442325592041015625 607 {+ 2053540495400698 607 (7.73325e+182)}
; 1.455977587998801059399056612164713442325592041015625 607 I == 1.455977587998801059399056612164713442325592041015625 607
; [HW: 1.455977587998801059399056612164713442325592041015625 607] 

; mpf : + 2053540495400698 607
; mpfd: + 2053540495400698 607 (7.73325e+182) class: Pos. norm. non-zero
; hwf : + 2053540495400698 607 (7.73325e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011110 #b0111010010111010111100100111110000101001111011111010)))
(assert (= r (fp #b0 #b11001011110 #b0111010010111010111100100111110000101001111011111010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
