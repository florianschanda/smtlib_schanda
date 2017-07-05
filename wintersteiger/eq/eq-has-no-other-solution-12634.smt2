(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4451704777102676313660367668489925563335418701171875p-157 {+ 2004869597532307 -157 (7.91061e-048)}
; Y = 1.3441286988129601542851787598920054733753204345703125p-470 {+ 1549817879741541 -470 (4.40903e-142)}
; 1.4451704777102676313660367668489925563335418701171875p-157 = 1.3441286988129601542851787598920054733753204345703125p-470 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100010 #b0111000111110110101100010100001011101001000010010011)))
(assert (= y (fp #b0 #b01000101001 #b0101100000011000110100011000001100000100010001100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
