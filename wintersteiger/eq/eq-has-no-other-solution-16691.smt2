(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.545944521290900208754237610264681279659271240234375p578 {+ 2458715542650662 578 (1.52944e+174)}
; Y = -1.698186289448309072014353660051710903644561767578125p395 {- 3144351512994594 395 (-1.37036e+119)}
; 1.545944521290900208754237610264681279659271240234375p578 = -1.698186289448309072014353660051710903644561767578125p395 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000001 #b1000101111000011000001010010100001011111111100100110)))
(assert (= y (fp #b1 #b10110001010 #b1011001010111100010101100010111110110010001100100010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
