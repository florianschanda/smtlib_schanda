(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.904323411394901910398402833379805088043212890625p-502 {+ 4072710578580496 -502 (1.4544e-151)}
; Y = -1.0390526970885496371721501418505795300006866455078125p-501 {- 175877712055805 -501 (-1.58712e-151)}
; 1.904323411394901910398402833379805088043212890625p-502 > -1.0390526970885496371721501418505795300006866455078125p-501 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001001 #b1110011110000001101111010011010011110010110000010000)))
(assert (= y (fp #b1 #b01000001010 #b0000100111111111010110111000100011010000110111111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
