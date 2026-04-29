(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0932522815112981628971056125010363757610321044921875p597 {+ 419970940265731 597 (5.67058e+179)}
; Y = -1.13100323439190564300815822207368910312652587890625p169 {- 589986117591716 169 (-8.46317e+050)}
; 1.0932522815112981628971056125010363757610321044921875p597 > -1.13100323439190564300815822207368910312652587890625p169 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010100 #b0001011111011111011000011010101101011110010100000011)))
(assert (= y (fp #b1 #b10010101000 #b0010000110001001011011011000111101100010001010100100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
