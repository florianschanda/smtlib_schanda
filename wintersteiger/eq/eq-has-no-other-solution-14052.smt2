(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3194467044804525368562053699861280620098114013671875p1008 {- 1438660059262899 1008 (-3.61932e+303)}
; Y = -1.8821246116279883864308430929668247699737548828125p474 {- 3972736072222152 474 (-9.1805e+142)}
; -1.3194467044804525368562053699861280620098114013671875p1008 = -1.8821246116279883864308430929668247699737548828125p474 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111101111 #b0101000111000111010000100101110010001110111110110011)))
(assert (= y (fp #b1 #b10111011001 #b1110000111010010111010110010010111110000010111001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
