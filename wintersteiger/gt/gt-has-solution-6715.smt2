(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.817495769397412086476606418727897107601165771484375p528 {- 3681673642435142 528 (-1.59702e+159)}
; Y = -1.1508779707478489218175354835693724453449249267578125p221 {- 679493972838429 221 (-3.87845e+066)}
; -1.817495769397412086476606418727897107601165771484375p528 > -1.1508779707478489218175354835693724453449249267578125p221 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001111 #b1101000101000111011001110001101000101110001001000110)))
(assert (= y (fp #b1 #b10011011100 #b0010011010011111111100000100111000001100100000011101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
