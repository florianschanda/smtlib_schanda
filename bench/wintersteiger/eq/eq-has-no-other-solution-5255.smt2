(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9243922178120367316722649775329045951366424560546875p822 {- 4163092447682475 822 (-5.38208e+247)}
; Y = -1.2479217877539390268992747223819606006145477294921875p-224 {- 1116540470945667 -224 (-4.6288e-068)}
; -1.9243922178120367316722649775329045951366424560546875p822 = -1.2479217877539390268992747223819606006145477294921875p-224 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110101 #b1110110010100100111101111110100000101101111110101011)))
(assert (= y (fp #b1 #b01100011111 #b0011111101110111110011010110001001011110011110000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
