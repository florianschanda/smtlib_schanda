(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8943305080477166324470772451604716479778289794921875p994 {+ 4027706542789763 994 (3.17155e+299)}
; Y = -1.7789300489219985745847907310235314071178436279296875p-948 {- 3507989078072795 -948 (-7.47692e-286)}
; 1.8943305080477166324470772451604716479778289794921875p994 = -1.7789300489219985745847907310235314071178436279296875p-948 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100001 #b1110010011110010110110000001101111100001010010000011)))
(assert (= y (fp #b1 #b00001001011 #b1100011101100111111101011010110111111101110111011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
