(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0777717177667087700143611073144711554050445556640625p845 {- 350252679154113 845 (-2.52856e+254)}
; Y = 1.9041478603645314304770863600424490869045257568359375p449 {+ 4071919967025535 449 (2.76802e+135)}
; -1.0777717177667087700143611073144711554050445556640625p845 > 1.9041478603645314304770863600424490869045257568359375p449 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001100 #b0001001111101000110110001110100001011100100111000001)))
(assert (= y (fp #b0 #b10111000000 #b1110011101110110001110111111001100000011100101111111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
