(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.621349483437644511951702952501364052295684814453125p730 {+ 2798309302076626 730 (9.15743e+219)}
; Y = -1.0608487332489551224767865278408862650394439697265625p-388 {- 274038332385961 -388 (-1.68273e-117)}
; 1.621349483437644511951702952501364052295684814453125p730 = -1.0608487332489551224767865278408862650394439697265625p-388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011001 #b1001111100010000110000100111111011000000010011010010)))
(assert (= y (fp #b1 #b01001111011 #b0000111110010011110010000101011101001110101010101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
