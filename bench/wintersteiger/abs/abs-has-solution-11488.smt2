(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.336797182806126027543314194190315902233123779296875p-154 {+ 1516799666985102 -154 (5.85391e-047)}
; 1.336797182806126027543314194190315902233123779296875p-154 | == 1.336797182806126027543314194190315902233123779296875p-154
; [HW: 1.336797182806126027543314194190315902233123779296875p-154] 

; mpf : + 1516799666985102 -154
; mpfd: + 1516799666985102 -154 (5.85391e-047) class: Pos. norm. non-zero
; hwf : + 1516799666985102 -154 (5.85391e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100101 #b0101011000111000010101110001010110001001100010001110)))
(assert (= r (fp #b0 #b01101100101 #b0101011000111000010101110001010110001001100010001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
