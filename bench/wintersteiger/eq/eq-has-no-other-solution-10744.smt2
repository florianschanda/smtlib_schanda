(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8273938687396193980561065473011694848537445068359375p-491 {- 3726250718944383 -491 (-2.85828e-148)}
; Y = 1.0344908134771009233787708581076003611087799072265625p19 {+ 155332814723177 19 (542371)}
; -1.8273938687396193980561065473011694848537445068359375p-491 = 1.0344908134771009233787708581076003611087799072265625p19 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010100 #b1101001111010000000101011010011100100101110001111111)))
(assert (= y (fp #b0 #b10000010010 #b0000100011010100011000111101001111100101100001101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
