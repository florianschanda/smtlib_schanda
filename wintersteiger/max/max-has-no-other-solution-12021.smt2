(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0647563543662379448306865015183575451374053955078125p-547 {+ 291636693393661 -547 (2.31123e-165)}
; Y = -1.3370765779864479672056631898158229887485504150390625p-188 {- 1518057951015089 -188 (-3.40814e-057)}
; 1.0647563543662379448306865015183575451374053955078125p-547 M -1.3370765779864479672056631898158229887485504150390625p-188 == 1.0647563543662379448306865015183575451374053955078125p-547
; [HW: 1.0647563543662379448306865015183575451374053955078125p-547] 

; mpf : + 291636693393661 -547
; mpfd: + 291636693393661 -547 (2.31123e-165) class: Pos. norm. non-zero
; hwf : + 291636693393661 -547 (2.31123e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011100 #b0001000010010011110111110101100000110110000011111101)))
(assert (= y (fp #b1 #b01101000011 #b0101011001001010101001101000111010110011000010110001)))
(assert (= r (fp #b0 #b00111011100 #b0001000010010011110111110101100000110110000011111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
