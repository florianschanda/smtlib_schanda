(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.23990742592726110871126365964300930500030517578125p-983 {- 1080446994009428 -983 (-1.51671e-296)}
; Y = 1.1060669061571155591394699513330124318599700927734375p789 {+ 477682879045527 789 (3.60121e+237)}
; -1.23990742592726110871126365964300930500030517578125p-983 = 1.1060669061571155591394699513330124318599700927734375p789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101000 #b0011110101101010100100101011010001101100110101010100)))
(assert (= y (fp #b0 #b11100010100 #b0001101100100111001100110110010100100001111110010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
