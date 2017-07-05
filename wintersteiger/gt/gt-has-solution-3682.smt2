(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.587614453484440968367152891005389392375946044921875p-781 {- 2646380233750046 -781 (-1.2483e-235)}
; Y = 1.019881800869537169518252994748763740062713623046875p777 {+ 89539670987502 777 (8.10693e+233)}
; -1.587614453484440968367152891005389392375946044921875p-781 > 1.019881800869537169518252994748763740062713623046875p777 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110010 #b1001011001101101111001101001110001011111011000011110)))
(assert (= y (fp #b0 #b11100001000 #b0000010100010110111110010100010010000101001011101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
