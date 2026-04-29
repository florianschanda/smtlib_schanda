(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.44650326873350376644111747737042605876922607421875p-82 {+ 2010871954687916 -82 (2.9913e-025)}
; Y = -1.730329153867711244885185806197114288806915283203125p-375 {- 3289110105216434 -375 (-2.24844e-113)}
; 1.44650326873350376644111747737042605876922607421875p-82 < -1.730329153867711244885185806197114288806915283203125p-375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101101 #b0111001001001110000010011100100011000100011110101100)))
(assert (= y (fp #b1 #b01010001000 #b1011101011110110110110011111011100101101010110110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
