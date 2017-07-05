(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.284286939451408926515796338208019733428955078125p634 {+ 1280314554579664 634 (9.15544e+190)}
; Y = -1.3116850918273581516615422515315003693103790283203125p210 {- 1403704863410629 210 (-2.15838e+063)}
; 1.284286939451408926515796338208019733428955078125p634 * -1.3116850918273581516615422515315003693103790283203125p210 == -1.684580032106997915519741582102142274379730224609375p844
; [HW: -1.684580032106997915519741582102142274379730224609375p844] 

; mpf : - 3083074377502358 844
; mpfd: - 3083074377502358 844 (-1.9761e+254) class: Neg. norm. non-zero
; hwf : - 3083074377502358 844 (-1.9761e+254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111001 #b0100100011000111000001110110001110011111101011010000)))
(assert (= y (fp #b1 #b10011010001 #b0100111111001010100110000001110000001100100111000101)))
(assert (= r (fp #b1 #b11101001011 #b1010111101000000101000110001000101100100111010010110)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
