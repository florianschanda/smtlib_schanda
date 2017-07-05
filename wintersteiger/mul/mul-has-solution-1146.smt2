(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.086744386799894268591515356092713773250579833984375p282 {- 390661988068486 282 (-8.44474e+084)}
; Y = -1.788372874954483382481384978746064007282257080078125p192 {- 3550515785874018 192 (-1.12258e+058)}
; -1.086744386799894268591515356092713773250579833984375p282 * -1.788372874954483382481384978746064007282257080078125p192 == 1.9435041833619741691308036024565808475017547607421875p474
; [HW: 1.9435041833619741691308036024565808475017547607421875p474] 

; mpf : + 4249165088611491 474
; mpfd: + 4249165088611491 474 (9.47989e+142) class: Pos. norm. non-zero
; hwf : + 4249165088611491 474 (9.47989e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011001 #b0001011000110100111000010101000001101010110010000110)))
(assert (= y (fp #b1 #b10010111111 #b1100100111010010110011100000001011111011101001100010)))
(assert (= r (fp #b0 #b10111011001 #b1111000110001001011111010111101100101101110010100011)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
