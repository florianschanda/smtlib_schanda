(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3974727224040091044798828079365193843841552734375p-751 {+ 1790058004508632 -751 (1.17982e-226)}
; Y = 1.7953573506668127901519937950070016086101531982421875p810 {+ 3581971068089443 810 (1.22588e+244)}
; 1.3974727224040091044798828079365193843841552734375p-751 + 1.7953573506668127901519937950070016086101531982421875p810 == 1.7953573506668127901519937950070016086101531982421875p810
; [HW: 1.7953573506668127901519937950070016086101531982421875p810] 

; mpf : + 3581971068089443 810
; mpfd: + 3581971068089443 810 (1.22588e+244) class: Pos. norm. non-zero
; hwf : + 3581971068089443 810 (1.22588e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010000 #b0110010111000000110001011011011111000110111111011000)))
(assert (= y (fp #b0 #b11100101001 #b1100101110011100100010100001000110111111010001100011)))
(assert (= r (fp #b0 #b11100101001 #b1100101110011100100010100001000110111111010001100011)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
