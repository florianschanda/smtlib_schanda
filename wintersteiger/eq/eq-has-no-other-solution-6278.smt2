(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.638998663378835818349443798069842159748077392578125p-624 {+ 2877794142283170 -624 (2.3543e-188)}
; Y = 1.1711337721780561427209477187716402113437652587890625p-861 {+ 770717992611601 -861 (7.61693e-260)}
; 1.638998663378835818349443798069842159748077392578125p-624 = 1.1711337721780561427209477187716402113437652587890625p-861 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001111 #b1010001110010101011010101001100101100110010110100010)))
(assert (= y (fp #b0 #b00010100010 #b0010101111001111011011000100001010111110111100010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
