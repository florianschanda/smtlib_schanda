(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7457078711481341937172828693292103707790374755859375p211 {- 3358369690629983 211 (-5.74514e+063)}
; Y = 1.7670208979844927998925641077221371233463287353515625p934 {+ 3454355030348345 934 (2.56601e+281)}
; -1.7457078711481341937172828693292103707790374755859375p211 = 1.7670208979844927998925641077221371233463287353515625p934 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010010 #b1011111011100110101101100000011011110011011101011111)))
(assert (= y (fp #b0 #b11110100101 #b1100010001011011011110110100100000110001001000111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
