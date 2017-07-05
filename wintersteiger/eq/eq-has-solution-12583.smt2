(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.858807361168519189931203072774223983287811279296875p-776 {+ 3867724511741582 -776 (4.6769e-234)}
; Y = -1.202289052236164668130413701874203979969024658203125p74 {- 911028900271922 74 (-2.27106e+022)}
; 1.858807361168519189931203072774223983287811279296875p-776 = -1.202289052236164668130413701874203979969024658203125p74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110111 #b1101101111011010110011001001100111001000011010001110)))
(assert (= y (fp #b1 #b10001001001 #b0011001111001001001101110001111110110001011100110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
