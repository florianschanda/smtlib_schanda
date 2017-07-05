(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.771459398776408900033629834069870412349700927734375p322 {+ 3474344260860902 322 (1.51353e+097)}
; Y = 1.52766359380097949127730316831730306148529052734375p-175 {+ 2376385564419068 -175 (3.18991e-053)}
; 1.771459398776408900033629834069870412349700927734375p322 < 1.52766359380097949127730316831730306148529052734375p-175 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000001 #b1100010101111110010111001111011111101111101111100110)))
(assert (= y (fp #b0 #b01101010000 #b1000011100010100111101100001011010101010001111111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
