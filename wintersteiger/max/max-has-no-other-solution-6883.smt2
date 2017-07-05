(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9127142892372674953804789765854366123676300048828125p-799 {- 4110499732904685 -799 (-5.73698e-241)}
; Y = 1.9390390626602507229137017930042929947376251220703125p335 {+ 4229055972683045 335 (1.35717e+101)}
; -1.9127142892372674953804789765854366123676300048828125p-799 M 1.9390390626602507229137017930042929947376251220703125p335 == 1.9390390626602507229137017930042929947376251220703125p335
; [HW: 1.9390390626602507229137017930042929947376251220703125p335] 

; mpf : + 4229055972683045 335
; mpfd: + 4229055972683045 335 (1.35717e+101) class: Pos. norm. non-zero
; hwf : + 4229055972683045 335 (1.35717e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100000 #b1110100110100111101001001100011011011101101011101101)))
(assert (= y (fp #b0 #b10101001110 #b1111000001100100110111010010111111001010110100100101)))
(assert (= r (fp #b0 #b10101001110 #b1111000001100100110111010010111111001010110100100101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
