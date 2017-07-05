(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1274604438204114398303090638364665210247039794921875p832 {- 574030807294083 832 (-3.22892e+250)}
; Y = -1.6193399149391549673993040414643473923206329345703125p154 {- 2789259010135653 154 (-3.69792e+046)}
; -1.1274604438204114398303090638364665210247039794921875p832 = -1.6193399149391549673993040414643473923206329345703125p154 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111111 #b0010000010100001001111110110010110111110000010000011)))
(assert (= y (fp #b1 #b10010011001 #b1001111010001101000011111000011111000101011001100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
