(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.718337916926563568864594344631768763065338134765625p800 {- 3235106374996570 800 (-1.14579e+241)}
; Y = -1.3639398850291808429346929187886416912078857421875p-32 {- 1639039530602680 -32 (-3.17567e-010)}
; -1.718337916926563568864594344631768763065338134765625p800 < -1.3639398850291808429346929187886416912078857421875p-32 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100011111 #b1011011111100100111111100110010010101101001001011010)))
(assert (= y (fp #b1 #b01111011111 #b0101110100101011001010100000111111101001000010111000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
