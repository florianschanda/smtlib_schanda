(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7718953828068346734170290801557712256908416748046875p773 {- 3476307758377867 773 (-8.80288e+232)}
; Y = -1.91295536440545266287927006487734615802764892578125p721 {- 4111585438942292 721 (-2.11024e+217)}
; -1.7718953828068346734170290801557712256908416748046875p773 > -1.91295536440545266287927006487734615802764892578125p721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000100 #b1100010110011010111011111001000100010110101110001011)))
(assert (= y (fp #b1 #b11011010000 #b1110100110110111011100010101100011010100010001010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
