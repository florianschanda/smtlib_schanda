(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.391465360921098959323671806487254798412322998046875p-73 {+ 1763003253572718 -73 (1.47327e-022)}
; Y = -1.1929659323261103676117045324645005166530609130859375p-680 {- 869041300919071 -680 (-2.3781e-205)}
; 1.391465360921098959323671806487254798412322998046875p-73 = -1.1929659323261103676117045324645005166530609130859375p-680 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110110 #b0110010000110111000100101110101010101100010001101110)))
(assert (= y (fp #b1 #b00101010111 #b0011000101100110001101110010000010010101001100011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
