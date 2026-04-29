(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5498961384319336342940687245572917163372039794921875p-10 {- 2476512044134531 -10 (-0.00151357)}
; Y = -1.7071108693480023799082800906035117805004119873046875p-557 {- 3184544247705291 -557 (-3.61871e-168)}
; -1.5498961384319336342940687245572917163372039794921875p-10 > -1.7071108693480023799082800906035117805004119873046875p-557 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110101 #b1000110011000101111111100100101011000011000010000011)))
(assert (= y (fp #b1 #b00111010010 #b1011010100000101001101111100101001111110111011001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
