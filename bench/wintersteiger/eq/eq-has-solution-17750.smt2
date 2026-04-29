(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1218300444636646329144014089251868426799774169921875p-235 {+ 548673742849091 -235 (2.03179e-071)}
; Y = -1.90939115969933848049322477891109883785247802734375p866 {- 4095533687955964 866 (-9.39445e+260)}
; 1.1218300444636646329144014089251868426799774169921875p-235 = -1.90939115969933848049322477891109883785247802734375p866 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010100 #b0001111100110000010000001111100010100100010001000011)))
(assert (= y (fp #b1 #b11101100001 #b1110100011001101110110111110101000101110000111111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
