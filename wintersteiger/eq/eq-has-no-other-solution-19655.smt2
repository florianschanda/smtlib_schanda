(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.059655886745012320915293457801453769207000732421875p-473 {+ 268666229315294 -473 (4.34487e-143)}
; Y = -1.6472710398226084738126928641577251255512237548828125p-528 {- 2915049613752813 -528 (-1.87468e-159)}
; 1.059655886745012320915293457801453769207000732421875p-473 = -1.6472710398226084738126928641577251255512237548828125p-528 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100110 #b0000111101000101100110111011001010010101011011011110)))
(assert (= y (fp #b1 #b00111101111 #b1010010110110011100011100000101110101111100111101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
