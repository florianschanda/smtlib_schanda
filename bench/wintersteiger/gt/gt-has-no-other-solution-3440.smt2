(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3781138898498792588753758536768145859241485595703125p126 {+ 1702873573431525 126 (1.17237e+038)}
; Y = -1.035576573986331627708068481297232210636138916015625p609 {- 160222645347962 609 (-2.20014e+183)}
; 1.3781138898498792588753758536768145859241485595703125p126 > -1.035576573986331627708068481297232210636138916015625p609 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111101 #b0110000011001100000100100110011100010001100011100101)))
(assert (= y (fp #b1 #b11001100000 #b0000100100011011100010111101110111000110011001111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
