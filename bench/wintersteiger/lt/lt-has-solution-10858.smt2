(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.080268807157530819296198387746699154376983642578125p459 {- 361498570004130 459 (-1.60805e+138)}
; Y = 1.6039955648733303927855331494356505572795867919921875p57 {+ 2720154200896963 57 (2.3116e+017)}
; -1.080268807157530819296198387746699154376983642578125p459 < 1.6039955648733303927855331494356505572795867919921875p57 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001010 #b0001010010001100011111110001110110100001011010100010)))
(assert (= y (fp #b0 #b10000111000 #b1001101010011111011101000000111000001111010111000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
