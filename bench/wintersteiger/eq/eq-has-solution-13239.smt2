(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.095529378295757805261700923438183963298797607421875p795 {+ 430226072495710 795 (2.28281e+239)}
; Y = 1.6113859877361400574358185622259043157100677490234375p991 {+ 2753437706548023 991 (3.37229e+298)}
; 1.095529378295757805261700923438183963298797607421875p795 = 1.6113859877361400574358185622259043157100677490234375p991 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011010 #b0001100001110100100111010000001110010110011001011110)))
(assert (= y (fp #b0 #b11111011110 #b1001110010000011110010101100011010001111001100110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
