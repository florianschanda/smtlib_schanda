(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.43986371877544616637578656082041561603546142578125p-1003 {+ 1980970079970900 -1003 (1.67972e-302)}
; Y = -1.1198046338873310912020997420768253505229949951171875p177 {- 539552104532243 177 (-2.14512e+053)}
; 1.43986371877544616637578656082041561603546142578125p-1003 < -1.1198046338873310912020997420768253505229949951171875p177 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010100 #b0111000010011010111010001001111011010110011001010100)))
(assert (= y (fp #b1 #b10010110000 #b0001111010101011100001000011100001110100100100010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
