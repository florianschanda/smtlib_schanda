(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1475224179009921865457499734475277364253997802734375p-807 {- 664381906287703 -807 (-1.34448e-243)}
; Y = -1.8661342303253058982903667128994129598140716552734375p-325 {- 3900721796945879 -325 (-2.7302e-098)}
; -1.1475224179009921865457499734475277364253997802734375p-807 = -1.8661342303253058982903667128994129598140716552734375p-325 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011000 #b0010010111000100000001110111100001001111110001010111)))
(assert (= y (fp #b1 #b01010111010 #b1101110110111010111110010001000100110001011111010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
