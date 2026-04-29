(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.592874088577325597526623823796398937702178955078125p-387 {+ 2670067524394466 -387 (5.05328e-117)}
; Y = -1.6971869883973502712848357987240888178348541259765625p-451 {- 3139851061153865 -451 (-2.91878e-136)}
; 1.592874088577325597526623823796398937702178955078125p-387 > -1.6971869883973502712848357987240888178348541259765625p-451 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111100 #b1001011111000110100110001010010100010101110111100010)))
(assert (= y (fp #b1 #b01000111100 #b1011001001111010110110001011001001011101000001001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
