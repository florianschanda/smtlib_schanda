(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6720322600636501331194949671044014394283294677734375p343 {+ 3026564236003607 343 (2.99594e+103)}
; Y = -1.2005418029587524575418910899315960705280303955078125p527 {- 903159989077245 527 (-5.27454e+158)}
; 1.6720322600636501331194949671044014394283294677734375p343 + -1.2005418029587524575418910899315960705280303955078125p527 == -1.20054180295875223549728616490028798580169677734375p527
; [HW: -1.20054180295875223549728616490028798580169677734375p527] 

; mpf : - 903159989077244 527
; mpfd: - 903159989077244 527 (-5.27454e+158) class: Neg. norm. non-zero
; hwf : - 903159989077244 527 (-5.27454e+158) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010110 #b1010110000001010010011100110001011010100100100010111)))
(assert (= y (fp #b1 #b11000001110 #b0011001101010110101101010010010100110000010011111101)))
(assert (= r (fp #b1 #b11000001110 #b0011001101010110101101010010010100110000010011111100)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
