(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6992601145688019936841328672016970813274383544921875p146 {- 3149187591407107 146 (-1.51579e+044)}
; Y = -1.2511751494937666251416885643266141414642333984375p181 {- 1131192309664856 181 (-3.83484e+054)}
; -1.6992601145688019936841328672016970813274383544921875p146 < -1.2511751494937666251416885643266141414642333984375p181 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010001 #b1011001100000010101101011111101101111000011000000011)))
(assert (= y (fp #b1 #b10010110100 #b0100000001001101000000111011110010100100110001011000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
