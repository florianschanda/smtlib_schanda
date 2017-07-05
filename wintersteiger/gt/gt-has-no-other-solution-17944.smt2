(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.695455621565692627683574755792506039142608642578125p-843 {+ 3132053678135970 -843 (2.89068e-254)}
; Y = -1.3835920885233605748254603895475156605243682861328125p948 {- 1727545186936077 948 (-3.29188e+285)}
; 1.695455621565692627683574755792506039142608642578125p-843 > -1.3835920885233605748254603895475156605243682861328125p948 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010110100 #b1011001000001001011000010010111001110001101010100010)))
(assert (= y (fp #b1 #b11110110011 #b0110001000110011000101110101001100110110010100001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
